/* eslint-disable no-unused-vars */
/* eslint-disable no-console */
const router = require('express').Router();
const getData = require('./controllers');

router.get('/getData', getData);

module.exports = router;
