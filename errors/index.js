exports.routeNotFound = (req, res, next) => {
  res.status(404).send({ msg: "404, route not found" });
};

exports.noDataOnPath = (err, req, res, next) => {
  res.status(404).send({ msg: "404, route found, but no data on path" });
  next(err);
};
