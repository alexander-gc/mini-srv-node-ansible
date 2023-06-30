const express = require("express");
const morgan = require("morgan");

const app = express();

app.use(
  morgan(":method :url :status :res[content-length] - :response-time ms")
);

app.get("/", (req, res) => {
  res.send("Hello world from AWS!");
});

app.listen(5000, () => {
  console.log("Server listening at port 5000");
});

