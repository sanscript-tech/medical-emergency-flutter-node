const mongoose = require("mongoose");
const validator=require('validator');


const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  phoneNo: Number,
  email: {
    type: String,
    unique: true,
    lowercase:true,
    required:[true,'Please provide your email'],
    validate:[validator.isEmail,'Please provide a valid email']
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

module.exports = mongoose.model("user", userSchema);
