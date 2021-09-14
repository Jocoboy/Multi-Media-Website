var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('gujian_ol/index', { title: '古剑奇谭网络版Wiki' });
});

module.exports = router;
