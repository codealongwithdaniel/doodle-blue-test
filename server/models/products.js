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
    },

    getProductsCount: function(callback){
        connection.query('SELECT COUNT(*) as recordCount FROM products', function(err, rows){
            if(err){
                callback(err, null);
            }else if(rows.length){
                callback(null, rows[0]);
            }else{
                callback(null, null);
            }
        })
    }
}

module.exports = productModel;