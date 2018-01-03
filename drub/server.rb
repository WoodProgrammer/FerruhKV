require 'drb/drb'



URI="druby://localhost:8787"

class HashServer
    def initialize
        @@user_hashes = {}
    end
    def set_data_to_hash(user_hash,card_number)

        @@user_hashes[user_hash] = card_number
        return @@user_hashes
        
    end

end

FRONT_OBJECT=HashServer.new

$SAFE = 1 

DRb.start_service(URI, FRONT_OBJECT)
DRb.thread.join