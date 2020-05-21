const connection = require('../config/dbConfig');
const bcrypt = require('bcryptjs');
const salt = 10;
const userModel = {
    addUser: function(data, callback){
        connection.query('INSERT INTO users set ?', data, function(err, rows){
            if(err){
                console.log(err);
                callback(err, null);
            }else{
                callback(null, rows);
            }
        })
    },

    hashPassword: function(password, callback){
        bcrypt.hash(password, salt, function(err, hash) {
            if(err){
                console.log(err);
                callback(err, null);
            }else{
                callback(null, hash);
            }
        });
    },

    updateUser: function(userData, callback){
        connection.query('UPDATE users set password = ? , place = ?, latitude = ?, longitude = ? WHERE username = ?', [userData.password,userData.place,userData.latitude,userData.longitude,userData.username], function(err, rows){
            if(err){
                console.log(err);
                callback(err, null);
            }else{
                callback(null, rows);
            }
        })
    },


    checkUserExists: function(username, callback){
        connection.query('SELECT * FROM users WHERE username = ?', username, function(err, rows){
            if(err){
                callback(err, null);
            }else if(rows.length){
                callback(null, true)
            }else{
                callback(null, false);
            }
        })
    },

    getUserByUsername: function(username, callback){
        connection.query('SELECT * FROM users WHERE username = ?', username, function(err, rows){
            if(rows.length){
                callback(null, rows[0]);
            }else{
                console.log(err);
                callback(err, null);
            }
        })
    },

    comparePasswords: function(password, hashedPassword, callback){
        bcrypt.compare(password, hashedPassword, function(err, res) {
            console.log(err);
            // res is true if the both matches - password and hashed password
            callback(err, res);
        });
    },

    getUserDataWithPagination: function(offset, rowCount, callback){
        connection.query('SELECT * FROM users LIMIT ? , ?', [offset, rowCount], function(err, rows){
            if(err){
                callback(err, null);
            }else{
                callback(null, rows);
            }
        })
    }
}

module.exports = userModel;