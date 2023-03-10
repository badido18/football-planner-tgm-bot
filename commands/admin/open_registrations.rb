require_relative 'admin_base'

class Command
    class OpenRegistrationsCommand < Command::AdminBase
        def run
            gamectl.open_registrations
            respond("Inscription ouvertes ! ⚽")
            log_info_multiple([gamectl.inspect,gamectl.get_game.inspect])
        end
    end
end