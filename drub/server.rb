require 'drb/drb'

URI="druby://localhost:8788"

class HashServer
    def initialize
        @@user_hashes = {}
    end
    def set_data_to_hash(user_hash,card_number)
        p "Hashed "
        @@user_hashes[user_hash] = card_number
        return @@user_hashes
        
    end


    def rescue_handling(rescue_hash)
        p rescue_hash
        rescue_hash.map {|key, val| @@user_hashes[key]=val }
        puts "Rescue Process Finished"
        puts @@user_hashes
    end

end

FRONT_OBJECT=HashServer.new

$SAFE = 1 

DRb.start_service(URI, FRONT_OBJECT)
DRb.thread.join