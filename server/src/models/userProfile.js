const mongoose = require("mongoose");

const userProfileSchema = new mongoose.Schema(
  {
    userField: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "user",
      required: true,
    },

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
    hospitals: [
      {
        hospital: {
          type: mongoose.Schema.Types.ObjectId,
          ref: "hospital",
          required: true,
        },
      },
    ],
  },

  {
    timestamps: true,
  }
);

module.exports = mongoose.model("userProfile", userProfileSchema);
