const express = require('express');
const router = express.Router();

const signUp = require('../controllers/user/signup');
const Login = require('../controllers/user/login');

router.post('/signup', signUp.signup);
router.post('/login', Login.login);

module.exports = router;