const neatCsv = require('neat-csv');
const fs = require('fs');
const userModel = require('../models/users');
const jwt = require('jsonwebtoken');
const keys = require('../config/keys');
const sortByDistance = require('sort-by-distance')
const opts = {
    yName: 'latitude',
    xName: 'longitude'
}

const userController = {
    addCsv: function(req, res){
        req.files.forEach((file)=>{
            fs.readFile(file.path, async (err, data) => {
                if (err) {
                  console.error(err);
                  res.json({success: false, message: 'Invalid CSV file'});
                  return false;
                }
                let csvData = await neatCsv(data);
                csvData.forEach((csv)=>{
                    userModel.hashPassword(csv.password, function(passwordHashErr, hashedPassword){
                        if(passwordHashErr){
                            res.json({success: false, message: 'something went wrong'});
                        }else{
                            let userData = {
                                username: csv.username,
                                password: hashedPassword,
                                place: csv.place,
                                latitude: req.body.latitude,
                                longitude: req.body.longitude
                            }
                            userModel.checkUserExists(userData.username, function(checkErr, checkRes){
                                if(checkErr){
                                    res.json({success: false, message: 'something went wrong'});
                                    return;
                                }else if(checkRes){
                                    userModel.updateUser(userData, function(updateErr, updateRows){
                                        if(updateErr){
                                            res.json({success: false, message: 'something went wrong'});
                                            return;
                                        }
                                    })
                                }else{
                                    userModel.addUser(userData, function(userErr, userRows){
                                        if(userErr){
                                            res.json({success: false, message: 'something went wrong'});
                                            return;
                                        }
                                    })
                                }
                            })
                        }
                    })
                })
            })
        })
        res.json({success: true, message: 'Details added successfully'});;
    },

    signin: function(req, res){
        userModel.getUserByUsername(req.body.username, function(userErr, userRow){
            if(userRow){
                userModel.comparePasswords(req.body.password, userRow.password , function(passwordErr, passwordRes){
                    if(passwordErr){
                        res.json({success: false, message: 'Authentication failed'});
                    }else if(passwordRes){
                        const token = jwt.sign({
                            username: userRow.username,
                            id: userRow.id,
                        },
                        keys.jwtSecret,
                        { expiresIn: '30d' });
                        res.json({
                            success: true,
                            token: token
                        });
                    }
                })
            }else{
                res.json({success: false, message: 'Account not exist'});
            }
        })
    },

    register: function(req, res){
        userModel.checkUserExists(req.body.username, function(checkErr, checkRes){
            if(checkErr){
                res.json({success: false, message: 'something went wrong'});
            }else if(checkRes){
                res.json({success: true, message: 'User exists'});
            }else{
                userModel.hashPassword(req.body.password, function(passwordHashErr, hashedPassword){
                    if(passwordHashErr){
                        res.json({success: false, message: 'something went wrong'});
                    }else{
                        let userData = {
                            username: req.body.username,
                            password: hashedPassword,
                            place: req.body.place,
                            latitude: req.body.latitude,
                            longitude: req.body.longitude
                        }
                        userModel.addUser(userData, function(userErr, userRows){
                            if(userErr){
                                res.json({success: false, message: 'something went wrong'});
                                return;
                            }else{
                                res.json({success: true, message: 'Registeration succesfull'});
                            }
                        })
                    }
                })
            }
        })
        
    },

    sortUsersBasedOnLocation: function(req, res){
        userModel.getUserByUsername(req.user.username, function(userErr, userRows){
            if(userErr){
                res.json({success: false, message: 'Something went wrong'});
            }else{
                userModel.getUserDataWithPagination(req.body.offset, req.body.rowCount, function(pageErr, pageRows){
                    if(pageErr){
                        res.json({success: false, message: 'Something went wrong'});
                    }else{
                        res.json({success: true, results: sortByDistance(userRows, pageRows, opts)});
                    }
                })
            }
        })
        
    }
}

module.exports = userController;