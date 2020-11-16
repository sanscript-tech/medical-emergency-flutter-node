const jwt = require("jsonwebtoken");
const User = require("../models/user");
const keys = require("../config/keys");

const auth = async (req, res, next) => {
  // Get token from the header
  var token = req.header("Authorization");
  if (!token) {
    return res.status(401).json({ msg: "Authorization denied" });
  }

  token = req.header("Authorization").replace('Bearer ','');
  // Verify token
  try {
    const decoded = jwt.verify(token, keys.JWT_SECRET);
    const user = await User.findOne({
      _id: decoded._id,
    }).select("-password");

    if (!user) {
      throw new Error();
    }

    req.token = token;
    req.user = user;

    next();
  } catch (e) {
    console.log(e)
    if (e.message) console.error(e.message);
    res.status(401).send({ errors: [{ msg: "Please Authenticate" }] });
  }
};

module.exports = auth;
