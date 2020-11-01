const mongoose = require("mongoose");

module.exports = async () => {
  try {
    await mongoose.connect(
        "mongodb://localhost:27017/HelloDoc",
      {
        useFindAndModify: false,
        useNewUrlParser: true,
        useCreateIndex: true,
        useUnifiedTopology: true,
      }
    );
    console.log("Database Connected");
  } catch (error) {
    console.log("Database Connectivity Error", error);
    throw new Error(error);
  }
};