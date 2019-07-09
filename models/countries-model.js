const db = require("../db/index");

const fetchCountryById = country_id => {
  return db
    .query("SELECT country_id, country FROM countries WHERE country_id = $1;", [
      country_id
    ])
    .then(country => country.rows);
};

module.exports = { fetchCountryById };
