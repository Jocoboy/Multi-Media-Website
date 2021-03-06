var express = require('express');
var router = express.Router();


router.get('/', function(req, res, next) {
  res.render('index', { title: '古剑Wiki-博物学会特刊' });
});


router.get('/all_series', function(req, res, next) {
  res.render('all_series/index', { title: '所以系列Wiki' });
});




router.get('/mini_games', function(req, res, next) {
  res.render('mini_games/index', { title: '古剑小游戏' });
});


router.get('/mini_games/qianqiuxi', function(req, res, next) {
  res.render('mini_games/qianqiuxi/index', { title: '古剑小游戏-千秋戏' });
});


module.exports = router;
