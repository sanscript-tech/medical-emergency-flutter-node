const mongoose = require("mongoose");

const doctorSchema = mongoose.Schema(
  {
    name: {
      type: String,
      trim: true,
      required: true,
    },
    specialization: {
      type: String,
      required: true,
    },
    numberOfPatients: {
      type: Number,
    },
    experience: {
        type: Number,
    },
    ratings: {
      type: Number,
      default: 0,
    },
    about: {
      type: String,
      trim: true,
      required: true,
    },
  },
  {
    timestamps: true,
  }
);


const Doctor = mongoose.model('Doctor', doctorSchema);
module.exports = Doctor;