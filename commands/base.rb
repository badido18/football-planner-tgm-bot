class Command
    class Base
        attr_reader :gamectl, :message, :reply, :logger, :playerctl, :requester_fullname, :requester_username
        
        def initialize(ctx)
            @gamectl = ctx[:gamectl]
            @message = ctx[:message]
            @reply = ctx[:reply]
            @logger = ctx[:logger]
            @playerctl = ctx[:playerctl]
            @requester_fullname = "#{message.from.first_name} #{message.from.last_name}"
            @requester_username = message.from.username
        end

        def reload_context(ctx)
            initialize(ctx)
        end

        def log_info(info)
            logger.info(info)
        end

        def log_info_multiple(info_arr)
            info_arr.each do |txt|
                log_info(txt)
            end 
        end

        def respond(text)
            reply.text = text
        end

        def respond_multiple(text_arr)
            reply.text = ''

            text_arr.each do |txt|
                reply.text+= txt
            end 
        end
    end
end