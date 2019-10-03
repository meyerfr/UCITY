const EntityService = require('../services/entityService');

const HouseInfo = require('../models/houseInfo');

exports.getOneHouse = (req, res, next) => {
    let es = new EntityService();
    es.readOne(HouseInfo, 
                { _id: req.params.id }, 
                req, res, next,
                200,
                401
                )
};