class responseService {

    responseSuccessStatus(res, req, next, httpStatusSuccess, parameter){
        res.status(httpStatusSuccess).json(
            parameter
        );
    };

    responsErrorService(res, req, next, httpStatusError, error){
        res.status(httpStatusError).json({
            error: error
        });
    }
}

module.exports = responseService;