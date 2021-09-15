var express = require('express');
var router = express.Router();


router.get('/', function(req, res, next) {
  res.render('index', { title: '古剑Wiki-博物学会特刊' });
});


router.get('/all_series', function(req, res, next) {
  res.render('all_series/index', { title: '所以系列Wiki' });
});

router.get('/all_series/gujian_ol', function(req, res, next) {
  res.render('gujian_ol/index', { title: '古剑奇谭网络版Wiki' });
});



module.exports = router;
