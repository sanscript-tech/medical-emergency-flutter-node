var express = require("express");
var router = express.Router();
const UserProfile = require("../../models/Profile");

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

module.exports = router;