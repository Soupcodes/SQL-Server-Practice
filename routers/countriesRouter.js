const countriesRouter = require("express").Router();
const { returnCountryById } = require("../controllers/countries-controller");

countriesRouter.get("/:country_id", returnCountryById);

module.exports = countriesRouter;
