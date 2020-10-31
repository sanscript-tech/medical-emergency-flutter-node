const mongoose = require("mongoose");

const userProfileSchema = new mongoose.Schema({
  userField: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "user",
    required: true,
  },
  hospitals: [
    {
      name: {
        type: String,
        trim: true,
        required: true,
      },
      availableBeds: {
        type: Number,
      },
      numberOfDoctors: {
        type: Number,
      },
      ratings: {
        type: Number,
      },
      description: {
        type: String,
        trim: true,
        required: [true, "Please provide a description"],
      },
      location: {
        type: String,
        trim: String,
      },
    },
  ],
  purchases: [
    {
      purchase: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "purchase",
        required: true,
      },
    },
  ],

  doctors: [
    {
      doctor: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "doctor",
        required: true,
      },
    },
  ],
});

module.exports = mongoose.model("userProfile", userProfileSchema);
