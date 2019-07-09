const apiRouter = require("express").Router();
const continentsRouter = require("./continentsRouter");

apiRouter.use("/continents", continentsRouter);

module.exports = apiRouter;
