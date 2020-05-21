const router = require('express').Router();
const multer = require('multer');
const auth = require('../config/authConfig');
const productController = require('../controllers/products');

router.post('/getAll', productController.getAllProducts);

module.exports = router;