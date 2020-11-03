const mongoose = require("mongoose");

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

module.exports = mongoose.model("user", userSchema);
