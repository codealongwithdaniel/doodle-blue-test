const router = require('express').Router();
const multer = require('multer');
const auth = require('../config/authConfig');
const userController = require('../controllers/users');

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, './public/uploads/');
    },
    filename: function (req, file, cb) {
      cb(null, file.fieldname + '-' + Date.now()+file.originalname);
    }
})

var upload = multer({ storage: storage});

router.post('/data', upload.any() ,userController.addCsv);
router.post('/signin', userController.signin);
router.post('/register', userController.register);
router.post('/sortedData', auth,userController.sortUsersBasedOnLocation);

module.exports = router;