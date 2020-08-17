
let express = require('express');
const server = express();

server.use(express.static(__dirname + '/www'));

server.listen('8080');
console.log('working on 8080');
