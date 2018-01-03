require 'drb/drb'

def machine_id(card_number, machine_count , user_hash ) 

    machine_id = card_number % machine_count
    return machine_id
end


SERVER_URI="druby://localhost:8788"

DRb.start_service

hash_server = DRbObject.new_with_uri(SERVER_URI)
user_hash = "asdadasd"
card_data = 23123123


puts hash_server.set_data_to_hash(user_hash,card_data)