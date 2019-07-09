const { Client } = require("pg");
const dbConfig = require("./config");

const client = new Client(dbConfig);

client
  .connect()
  .then(() => {
    "You are now connected to the database";
  })
  .catch(err => {
    console.log(err);
  });

module.exports = client;
