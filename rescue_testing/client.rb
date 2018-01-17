require 'socket'
require 'json'

host = 'localhost'
port = 2000

$s = TCPSocket.open(host, port)


def get k 
    request2 = {"get" => "#{k}"}.to_json
    $s.print(request2)
end


def set key , value
    if key == 'get'
        p "Key Error Get is not impossible"
    else
        tmp_hash = {}
        tmp_hash["#{key}"] = "#{key}"
        
        $s.print(tmp_hash.to_json)

    end
end

set "asdd","asd2"

$s.close

