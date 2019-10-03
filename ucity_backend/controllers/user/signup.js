const EntityService = require('../../services/entityService');

const User = require('../../models/user');
const bcrypt = require('bcrypt');

exports.signup = (req, res, next) => {
  bcrypt.hash(req.body.password, 12).then(
    (hash) => {
      const user = new User({
        email: req.body.email,
        password: hash
      });
      
      let es = new EntityService();
      es.createSomething(user, 
                          req, res, next,
                          200,
                          {message: 'User data was safed to DB.'},
                          400
                          );
    }
  );
};