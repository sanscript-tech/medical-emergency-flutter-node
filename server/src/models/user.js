const mongoose = require("mongoose");
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  phoneNo: Number,
  email: {
    type: String,
    unique: true,
    required: true,
  },
  Address: String,
  password: String,
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
});

//middleware hash the plain text password before saving
userSchema.pre('save', async function(next){

  if(this.isModified('password')){
      this.password = await bcrypt.hash(this.password, 8);
  }

  next()
})

// used to remove private data from JSON response
userSchema.methods.toJSON = function() {      
  const userObject = this.toObject();

  delete userObject.password;
  delete userObject.tokens;

  return userObject;
}

// creates and saves a jwt token to the user record and returns the token
userSchema.methods.generateAuthToken = async function() {                     
  const token = jwt.sign({_id: this._id.toString() }, process.env.JWT_SECRET, {
      expiresIn: process.env.JWT_EXPIRES_IN,
  })

  this.tokens = this.tokens.concat({ token });
  await this.save();

  return token;
}

// searches for a user using email and password
userSchema.statics.findByCredentials = async(email, password) => {         
  const user = await User.findOne({email})
  
  if(!user){
      throw new Error({"error": "Unable to login"});
  }

  const isMatch = await bcrypt.compare(password, user.password);
  if(!isMatch){
      throw new Error({"error": "Unable to login"});
  }

  return user;
}



module.exports = mongoose.model("user", userSchema);
