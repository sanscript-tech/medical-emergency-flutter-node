var express = require("express");
var router = express.Router();
const UserProfile = require("../../models/Profile");
const auth = require("../../middleware/auth")

router.get("/", async(req,res)=> {
    try{
      var users = await UserProfile.find({}, {updatedAt: 0})
                  .populate('userField', {updatedAt: 0, createdAt: 0 , date: 0})
                  .populate('purchases')
                  .populate('doctors')
                  .populate('hospitals')
  
      res.send({users})
    }catch(e){
      console.log(e)
      res.status(400).send({ errors: [{msg: e.message}] });
    }
})
  
router.get("/:id", async(req,res)=> {
    try{
      var user = await UserProfile.findById(req.params.id, {updatedAt: 0})
                  .populate('userField', {updatedAt: 0, createdAt: 0 , date: 0})
                  .populate('purchases')
                  .populate('doctors')
                  .populate('hospitals')
                  
      res.send({user})
    }catch(e){
      console.log(e)
      res.status(400).send({ errors: [{msg: e.message}] });
    }
})


router.post("/me" , auth, async (req, res) => {
  req.body.userField = req.user._id;
  const profile = new UserProfile(req.body)
  try{
      await profile.populate().save();
      res.status(201).json({msg: "Your account has been created successfully",profile})
  }catch(e){
      console.log(e);
      res.status(400).send({ errors: [{msg: e.message}] });
  } 
})

router.delete('/me', auth, async(req,res)=>{
  try{
      await UserProfile.deleteOne({userField: req.user._id})
      await req.user.remove()
      res.send(req.user);
  }catch(e){
      res.status(400).send(e);
  }
})


module.exports = router;