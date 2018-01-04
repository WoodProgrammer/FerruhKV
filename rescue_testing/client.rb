require 'socket'
require 'json'

host = 'localhost'
port = 2000

$s = TCPSocket.open(host, port)


def get k 
    request2 = {"get" => "#{k}"}.to_json
    $s.print(request2)
end


def set k , v
    if k == 'get'
        p "Key Error Get is not impossible"
    else
        request2 = {"#{k}" => "#{v}"}.to_json
        $s.print(request2)

    end
end



$s.close

