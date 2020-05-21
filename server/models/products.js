const connection = require('../config/dbConfig');

const productModel = {
    addProduct: function(data, callback){
        connection.query('INSERT INTO products SET ?', data, function(err, rows){
            if(err){
                console.log(err);
                callback(err, null);
            }else{
                callback(null, rows);
            }
        })
    },

    getAllProductsWithPagination: function(offset, rowCount, callback){
        connection.query('SELECT * FROM products LIMIT ? , ?', [offset, rowCount], function(err, rows){
            if(err){
                callback(err, null);
            }else{
                callback(null, rows);
            }
        })
    }
}

module.exports = productModel;