const continentsRouter = require("express").Router();
const {
  returnContinents,
  returnCountriesByContinent
} = require("../controllers/continents-controller");
const countriesRouter = require("./countriesRouter");

continentsRouter.get("/", returnContinents);

continentsRouter.get("/:continent_id/countries", returnCountriesByContinent);

continentsRouter.use("/:continent_id/countries", countriesRouter);

module.exports = continentsRouter;
