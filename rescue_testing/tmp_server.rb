require 'socket'
require 'json'

main_hash = {}

server = TCPServer.open(2001)
loop {
  client = server.accept
  params = client.gets
  rescue_data = JSON.parse(params)
  begin
    rescue_data.map {|key, val| main_hash[key]=val }
  rescue Exception => e  
    p e
  end
}


