const mongoose = require("mongoose");

const  medicineSchema = mongoose.Schema(
  {
    name: {
      type: String,
      trim: true,
      required: true,
    },
    category: {
      type: String,
      required: true,
    },
    manfDate: {
      type: Date,
      required: true,
    },
    expDate: {
        type: Date,
        required: true,
    },
    price: {
      type: Number,
      required: true,
    },
    description: {
      type: String,
      trim: true,
    },
  },
  {
    timestamps: true,
  }
);


const Medicine = mongoose.model('Medicine', medicineSchema);
module.exports = Medicine;