var favicon = require('serve-favicon');
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var cookieSession = require('cookie-session');
var logger = require('morgan');



var app = express();
app.listen(4000);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// app.use(favicon(path.join(__dirname,'/public/images/breadcrumb-1.png')));
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cookieParser());
(function (){
  var arr = [];
  for(var i = 0 ; i < 10000 ; i++){
    arr.push('keys_'+Math.random());
  }
  app.use(cookieSession({
      name: 'session_id',
      keys: arr,
      maxAge: 20*60*1000 
  }));
})();

app.use(express.static(path.join(__dirname, 'public')));


var indexRouter = require('./routes/index');
app.use('/', indexRouter);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
