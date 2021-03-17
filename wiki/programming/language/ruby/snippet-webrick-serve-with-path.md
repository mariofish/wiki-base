# Snippet: Webrick Serve with Path

e.g. This wiki is served with the following:
```ruby
require 'webrick'

server = WEBrick::HTTPServer.new(Port: 8000)
server.mount(
  '/wiki-base',
  WEBrick::HTTPServlet::FileHandler,
  './docs'
)
server.start
```
