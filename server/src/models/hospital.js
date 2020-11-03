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
    },
  },
  {
    timestamps: true,
  }
);

module.exports = mongoose.model("hospital", hospitalSchema);
