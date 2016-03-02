// nodejs

var http = require('http');
var url = require('url');

var server = http.createServer(function(req, res) {
    var page = url.parse(req.url).pathname;
    console.log(page);
    res.writeHead(200, {"Conten-Type": "text/html"});
    res.end('<p>Hello World!</p>');
});
server.listen(8080);
