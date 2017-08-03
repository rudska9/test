fs = require 'fs'
http = require 'http'
url = require 'url'

http.createServer((req, res) ->
  pathname = url.parse(req.url).pathname
  if pathname = '/'
    fs.readFile 'html.html', (error, data) ->
      res.writeHead(200, { 'Content-Type': 'text/html'})
      res.end(data)
).listen(8080, ->
  console.log('Server Running at http://192.168.0.186')
)