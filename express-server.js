var express = require('express');

var app = express();

app.get('/', function (req, res) {
    res.setHeader('Conten-Type', 'text/plain');
    res.end('Hello World!');
});

app.listen(8080);
