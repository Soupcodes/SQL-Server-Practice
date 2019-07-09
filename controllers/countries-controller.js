const { fetchCountryById } = require("../models/countries-model");

const returnCountryById = (req, res, next) => {
  const { country_id } = req.params;
  fetchCountryById(country_id).then(country => {
    res.status(200).send(country);
  });
};

module.exports = { returnCountryById };
