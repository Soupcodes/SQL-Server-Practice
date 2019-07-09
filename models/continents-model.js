const db = require("../db/index");

const fetchContinents = () => {
  return db
    .query("SELECT continent FROM continents;")
    .then(continents => continents.rows);
};

const fetchCountriesByContinent = continent_id => {
  return db
    .query(
      "SELECT * FROM continents JOIN countries ON continents.continent_id = countries.continent_id WHERE continents.continent_id = $1;",
      [continent_id]
    )
    .then(countries => countries.rows);
};

module.exports = { fetchContinents, fetchCountriesByContinent };
