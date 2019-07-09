const {
  fetchContinents,
  fetchCountriesByContinent
} = require("../models/continents-model");

const returnContinents = (req, res, next) => {
  fetchContinents().then(continents => {
    res.status(200).send(continents);
  });
};

const returnCountriesByContinent = (req, res, next) => {
  const { continent_id } = req.params;
  fetchCountriesByContinent(continent_id).then(countries => {
    res.status(200).send(countries);
  });
};

module.exports = { returnContinents, returnCountriesByContinent };
