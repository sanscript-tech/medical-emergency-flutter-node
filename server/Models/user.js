const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({

    name : String,
    phoneNo : Number,
    email : {
        type: String, 
        unique: true, 
        required: true
    },
    Address : String,
    password : String,
    token : {
        type: String, 
        unique: true, 
    },

})

module.exports = mongoose.model('user', userSchema);