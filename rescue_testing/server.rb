require 'socket'
require 'json'
$hash = {}
class HashServer
  def initialize(rescue_hosts)
    @@rescue_hosts = rescue_hosts
   
  end

  def set_to_hash(k,v)
    $hash[k] = v
  end

  def get_hash
    return $hash
  end

  def get k 
    return $hash[k]
  end

  def rescue_server
    host,port = @@rescue_hosts.split(":")
    
    s = TCPSocket.open(host, port)

    s.print($hash.to_json)
    s.close
    
  end
  
end


trap('TERM') do
  log_file = File.open("log.log","a")
  puts 'Exiting...'
  log_file.write("Hoo")
  hash_server_obj4_resc = HashServer.new("127.0.0.1:2001")
  hash_server_obj4_resc.rescue_server

  exit
end



server = TCPServer.open(2000)
loop {
  hash_server_obj4_proc = HashServer.new("127.0.0.1:2001")
  client = server.accept
  params = client.gets
  data = JSON.parse(params)

  if data["get"] == nil
    data.map {|key, val| hash_server_obj4_proc.set_to_hash(key,val) }
    p hash_server_obj4_proc.get_hash
  else
    p hash_server_obj4_proc.get(data["get"])
  end

}


