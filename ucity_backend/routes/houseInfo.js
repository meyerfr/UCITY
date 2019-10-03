const express = require('express');
const router = express.Router();

const multer = require('../middleware/multer-config');

const createHouseInfo = require('../controllers/createHouseInfo');
const getOne = require('../controllers/getOneHouseInfo');
const getAll = require('../controllers/getAllHouseInfo');

// possible to add authentification call 

router.post('/', multer, createHouseInfo.createHouseInfo);
router.get('/:id', getOne.getOneHouse);
router.get('/', getAll.getAllHouseInfo);

module.exports = router;