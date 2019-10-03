// CRUD services for enharitance

const responseService = require('./responseService');

class EntityService {

    createSomething(data, req, res, next, httpStatusSuccess, parameter, httpStatusError){
        let rSer = new responseService();
        data.save().then(
            () => {
                rSer.responseSuccessStatus(res, req, next, httpStatusSuccess, parameter)
            }
        ).catch(
            (error) => {
                rSer.responsErrorService(res, req, next, httpStatusError, error)
            }
        );
    }
  
    readAll(data, req, res, next, httpStatusSuccess, httpStatusError){
        let rSer = new responseService();
        data.find().then(
            (parameter) => {
                rSer.responseSuccessStatus(res, req, next, httpStatusSuccess, parameter)
            }
        ).catch(
            (error) => {
                rSer.responsErrorService(res, req, next, httpStatusError, error)
            }
        );
    }

    readOne(data, findJson, req, res, next, httpStatusSuccess, httpStatusError){
        let rSer = new responseService();
        data.findOne(findJson).then(
            (parameter) => {
                rSer.responseSuccessStatus(res, req, next, httpStatusSuccess, parameter)
            }
        ).catch(
            (error) => {
                rSer.responsErrorService(res, req, next, httpStatusError, error)
            }
        )
    };

    updateSomething(data1, data2, updateJson, req, res, next, httpStatusSuccess, parameter, httpStatusError){
        let rSer = new responseService();
        data1.updateOne( updateJson, data2
            ).then(
            () => {
                rSer.responseSuccessStatus(res, req, next, httpStatusSuccess, parameter)
              }
            ).catch(
              (error) => {
                rSer.responsErrorService(res, req, next, httpStatusError, error)
              }
            );
    };


    deleteOne(data, deleteJson, req, res, next, httpStatusSuccess, parameter, httpStatusError){
        let rSer = new responseService();
        data.deleteOne(deleteJson).then(
            () => {
                rSer.responseSuccessStatus(res, req, next, httpStatusSuccess, parameter)
              }
            ).catch(
              (error) => {
                rSer.responsErrorService(res, req, next, httpStatusError, error)
              }
            );
    };

  }

  module.exports = EntityService;
