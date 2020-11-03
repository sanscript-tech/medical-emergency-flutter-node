const mongoose = require("mongoose");

const hospitalSchema = mongoose.Schema(
  {
    name: {
      type: String,
      trim: true,
      required: true,
    },
    availableBeds: {
      type: Number,
      default: 0,
    },
    numberOfDoctors: {
      type: Number,
      default: 0,
    },
    ratings: {
      type: Number,
      default: 0,
    },
    description: {
      type: String,
      trim: true,
      required: [true, "Please provide a description"],
    },
    location: {
      type: String,
    },
  },
  {
    timestamps: true,
  }
);

module.exports = mongoose.model("hospital", hospitalSchema);
