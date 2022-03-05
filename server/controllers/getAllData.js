/* eslint-disable no-console */
/* eslint-disable no-unused-vars */
const getAllData = require('../database/queries');

const getData = (request, response) => {
  getAllData()
    .then((data) => response.json(data.rows))
    .catch((error) => console.log(error));
};

module.exports = getData;
