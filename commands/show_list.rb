require_relative 'base'

class Command
    class ShowListCommand < Command::Base
        def run
            log_info(gamectl.get_main_list)

            game_infos = gamectl.get_game_info
            respond_multiple([
                "#{game_infos[:day]}","\nHeure : #{game_infos[:time]}","\nà #{game_infos[:location]}",
                "\n*************************\nListe des titulaires\n---\n",
                gamectl.get_main_list,
                "\n*************************\nListe des d'attente\n---\n",
                gamectl.get_waiting_list
            ])
        end
    end
end