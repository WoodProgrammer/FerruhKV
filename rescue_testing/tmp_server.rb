require 'socket'
require 'json'

main_hash = {}

server = TCPServer.open(2001)
loop {
  client = server.accept
  params = client.gets
  data = JSON.parse(params)
  p data
  data.map {|key, val| main_hash[key]=val }
}


