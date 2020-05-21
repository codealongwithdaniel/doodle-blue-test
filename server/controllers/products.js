const faker = require('faker');
const productModel = require('../models/products');

const productController = {
    generateProducts: function(req, res){
        for(var i = 1; i<50; i++){
            let data = {
                productName: faker.fake("{{commerce.productName}}"),
                department: faker.fake("{{commerce.department}}"),
                price: faker.fake("{{commerce.price}}"),
                imageUrl: faker.fake("{{image.technics}}"),
            }

            productModel.addProduct(data, function(addErr, addRows){
                if(addErr){
                    res.json({success: false, message: 'Something went wrong'});
                }
            })
        }

        res.send('hello');
    },


    getAllProducts: function(req, res){
        productModel.getAllProductsWithPagination(req.body.offset, req.body.rowCount, function(pageErr, pageRows){
            if(pageErr){
                res.json({success: false, message: 'Something went wrong'});
            }else{
                res.json({success: true, results: pageRows});
            }
        })
    }
}

module.exports = productController;