var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World WP - 4:10 AM and working with my 2nd Can of RedBull!');
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});
