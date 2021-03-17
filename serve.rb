require 'webrick'

server = WEBrick::HTTPServer.new(Port: 8000)
server.mount(
  '/wiki-base',
  WEBrick::HTTPServlet::FileHandler,
  './docs'
)
server.start
