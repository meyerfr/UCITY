const EntityService = require('../services/entityService');

const HouseInfo = require('../models/houseInfo');

exports.getAllHouseInfo = (req, res, next) => {
    let es = new EntityService();
    es.readAll(HouseInfo, 
              req, res, next,
              200,
              400
              );
  };