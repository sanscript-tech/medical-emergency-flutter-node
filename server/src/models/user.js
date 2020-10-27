const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({

    name : {
        type : String,
        required :true,
    },
    phoneNo : Number,
    email : {
        type: String, 
        unique: true, 
        required: true
    },
    Address : String,
    password : String,
    token : String, 

})

module.exports = mongoose.model('user', userSchema);