var express = require("express");
var router = express.Router();
const User = require('../../models/user');



/* GET users listing. */
router.get("/", function (req, res, next) {
  res.send("respond with a resource");
});

router.post("/login", async (req,res) => {
  try{
    const user = await User.findByCredentials(req.body.email, req.body.password);
    const token = await user.generateAuthToken();
    res.send({msg: "You have been logged in successfully", user: user.toJSON() , token});
  }catch(e){
      console.log(e);
      res.status(400).send({ errors: [{msg: "Unable to login"}] });
  }
})

module.exports = router;
