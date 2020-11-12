var express = require("express");
var router = express.Router();
const auth = require("../../middleware/auth");
const User = require("../../models/user");
const UserProfile = require("../../models/Profile");

/* GET users listing. */
router.get("/", function (req, res, next) {
  res.send("respond with a resource");
  next();
});

router.post("/signup", async (req, res) => {
  const user = new User(req.body);
  try {
    await user.save();
    const token = await user.generateAuthToken();
    const filtered_user = user.toJSON();
    res.status(201).json({
      msg: "Your account has been created successfully",
      user: filtered_user,
      token,
    });
  } catch (e) {
    console.log(e);
    res.status(400).send({ errors: [{ msg: e.message }] });
  }
});

router.post("/login", async (req, res) => {
  try {
    const user = await User.findByCredentials(
      req.body.email,
      req.body.password
    );
    const token = await user.generateAuthToken();
    res.send({ msg: "You have been logged in successfully", user, token });
  } catch (e) {
    console.log(e);
    res.status(400).send({ errors: [{ msg: e.message }] });
  }
});

// @route   GET api/users
// @desc    Get yourself
// @access  Private
router.get("/", auth, (req, res) => {
  res.send(req.user);
});

// @route POST api/users/logout
// @desc Logout a user
// @access Private

router.post("/logout", auth, async (req, res) => {
  res.clearCookie("token");
  res.status(200).json({
    msg: "User Signout Successfully",
  });
});

module.exports = router;
