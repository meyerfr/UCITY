const EntityService = require('../services/entityService');
const multer = require('multer');

const HouseInfo = require('../models/houseInfo');

exports.createHouseInfo =  (req, res, next) => {
  const url = req.protocol + '://' + req.get('host'); 
  req.body.houseInfo = json.parse(req.body.houseInfo);
  const house = new HouseInfo({
    name: req.body.houseInfo.name,
    description: req.body.houseInfo.description,
    productImage: url + '/images/' + req.file.filename
  });

  let es = new EntityService();
  es.createSomething(house, 
                      req, res, next,
                      200, 
                      {message: 'Post saved successfully!'},
                      400);
};