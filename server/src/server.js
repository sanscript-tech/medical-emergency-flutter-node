// Initialize express app
const express = require("express");
const app = express();

// Importing db connection
const dbConnection = require("./config/database");
// db Connectivity
dbConnection();

// Initialize port
const PORT = 3000;

// request express payload middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// routes
app.use("/api/user", require("./routers/api/userRouter"));

app.get("/", (req, res) => {
  res.send("Api is running");
});

app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});
