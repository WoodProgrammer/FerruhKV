require 'drb/drb'
RESCUE_MACHINE_URI="druby://localhost:8788"


class RescueMigrationExecutor
    
    def initialize
        DRb.start_service
        @tmp_client_obj = DRbObject.new_with_uri(RESCUE_MACHINE_URI)

    end

    def migrate_hashes2_rescue_machine(main_hash)
        @tmp_client_obj.rescue_handling(main_hash)
    end
end

