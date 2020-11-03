const mongoose = require("mongoose");
const validator = require("validator");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const keys = require("../config/keys");

const userSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true,
    },
    phoneNo: Number,
    email: {
      type: String,
      unique: true,
      lowercase: true,
      required: [true, "Please provide your email"],
      validate: [validator.isEmail, "Please provide a valid email"],
    },
    Address: String,
    password: {
      type: String,
      required: [true, "Please provide a password"],
    },
    date: {
      type: Date,
      default: Date.now,
    },
    tokens: [
      {
        token: {
          type: String,
        },
      },
    ],
  },
  {
    timestamps: true,
  }
);

//middleware hash the plain text password before saving
userSchema.pre('save', async function(next){

  if(this.isModified('password')){
      this.password = await bcrypt.hash(this.password, 8)
  }

  next()
})

// used to remove private data from JSON response
userSchema.methods.toJSON = function() {      
  const userObject = this.toObject()

  delete userObject.password
  delete userObject.tokens

  return userObject
}

userSchema.methods.generateAuthToken = async function() {                     
  const token = jwt.sign({_id: this._id }, keys.JWT_SECRET, {
      expiresIn: keys.JWT_EXPIRES_IN,
  })

  this.tokens = this.tokens.concat({ token });
  await this.save();

  return token;
}

userSchema.statics.findByCredentials = async(email, password) => {         
  const user = await User.findOne({email})
  
  if(!user){
      throw new Error('User not found')
  }

  const isMatch = await bcrypt.compare(password, user.password)
  if(!isMatch){
      throw new Error('Unable to login')
  }

  return user;
}

const User = mongoose.model('User', userSchema);

module.exports = User;
