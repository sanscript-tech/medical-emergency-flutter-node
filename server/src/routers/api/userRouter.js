var express = require("express");
var router = express.Router();
const User = require('../../models/user');



/* GET users listing. */
router.get("/", function (req, res, next) {
  res.send("respond with a resource");
});

router.post("/login", async (req,res) => {
  const user = new User(req.body)
    try{
        await user.save();
        const token = await user.generateAuthToken();
        const filtered_user = user.toJSON();
        res.status(201).json({msg: "You have been logged in successfully",user:filtered_user, token});
    }catch(e){
        res.status(400).send({ errors: [{msg: "Unable to login"}] });
    } 
})

module.exports = router;
