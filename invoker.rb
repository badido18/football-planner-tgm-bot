require 'require_all'

require_all 'commands/'

class CommandInvoker
    attr_reader :commands

    def initialize()
        @commands = {} 
    end

    # Singleton
    @instance = new
    private_class_method :new
    
    def self.instance
        @instance 
    end 


    # Commands

    def hello(ctx)
        if commands.key?("hello")
            commands["hello"].reload_context(ctx)
        else
            commands["hello"] = Command::HelloCommand.new(ctx)
        end
        commands["hello"].run
    end

    def log(ctx)
        if commands.key?("log")
            commands["log"].reload_context(ctx)
        else
            commands["log"] = Command::AdminLogCommand.new(ctx)
        end
        commands["log"].run
    end

    def begin_match(ctx)
        if commands.key?("begin_match")
            commands["begin_match"].reload_context(ctx)
        else
            commands["begin_match"] = Command::BeginMatchCommand.new(ctx)
        end
        commands["begin_match"].run
    end

    def show_list(ctx)
        if commands.key?("show_list")
            commands["show_list"].reload_context(ctx)
        else
            commands["show_list"] = Command::ShowListCommand.new(ctx)
        end
        commands["show_list"].run
    end

    def add_player_to_game(ctx)
        if commands.key?("add_player_to_game")
            commands["add_player_to_game"].reload_context(ctx)
        else
            commands["add_player_to_game"] = Command::AddPlayerToGameCommand.new(ctx)
        end
        commands["add_player_to_game"].run
    end

    def cancel_player_from_game(ctx)
        if commands.key?("cancel_player_from_game")
            commands["cancel_player_from_game"].reload_context(ctx)
        else
            commands["cancel_player_from_game"] = Command::CancelPlayerFromGameCommand.new(ctx)
        end
        commands["cancel_player_from_game"].run
    end

    def show_all_players(ctx)
        if commands.key?("show_all_players")
            commands["show_all_players"].reload_context(ctx)
        else
            commands["show_all_players"] = Command::ShowAllPlayersCommand.new(ctx)
        end
        commands["show_all_players"].run
    end

    def confirm_player_in_main_list(ctx)
        if commands.key?("confirm_player_in_main_list")
            commands["confirm_player_in_main_list"].reload_context(ctx)
        else
            commands["confirm_player_in_main_list"] = Command::ConfirmPlayerInMainListCommand.new(ctx)
        end
        commands["confirm_player_in_main_list"].run
    end
end