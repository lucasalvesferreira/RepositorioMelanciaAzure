var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idCanteiro", function(req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idCanteiro", function(req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})
  

router.get("/buscarMediaUmidade/:idCanteiro", function(req, res) {
    medidaController.buscarMediaUmidade(req, res);
})
  

router.get("/buscarMediaTemperatura/:idCanteiro", function(req, res) {
    medidaController.buscarMediaTemperatura(req, res);
})
  
module.exports = router;