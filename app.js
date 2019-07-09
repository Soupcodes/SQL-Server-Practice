const express = require("express");
const app = express();
const apiRouter = require("./routers/apiRouter");
const { routeNotFound } = require("./errors/index");

app.use(express.json());

app.use("/api", apiRouter);

app.use("/*", routeNotFound);
app.use(noDataOnPath);

module.exports = app;
