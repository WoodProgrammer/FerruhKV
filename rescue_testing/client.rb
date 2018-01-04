require 'socket'
require 'json'

host = 'localhost'
port = 2000

s = TCPSocket.open(host, port)

request = { 'asd2' => 'param2' }.to_json
s.print(request)

s.close

