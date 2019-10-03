const UserLogin = require('../../models/user');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const responseService = require("../../services/responseService");

require('dotenv').config();

exports.login = (req, res, next) => {
  const resSer = new responseService();
    UserLogin.findOne({ email: req.body.email }).then(
      (userLogin) => {
        if (!userLogin) {
          return res.status(401).json({
            error: new Error('User data to login not found!')
          });
        }
        bcrypt.compare(req.body.password, userLogin.password).then(
          (valid) => {
            if (!valid) {
              return res.status(401).json({
                error: new Error('Incorrect password!')
              });
            }
            const token = jwt.sign(
              { userLoginId: userLogin._id },
              process.env.AUTH_TOKEN,
              { expiresIn: '12h' });
            res.status(200).json({
              userLoginId: userLogin._id,
              token
            });
          }
        )
      }
    ).catch(
      (error) => {
        resSer.responsErrorService(res, req, next, 
                                      500,
                                      error)
      }
    );
  }