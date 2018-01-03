module SignalHandler
    def term_handler
        trap('TERM') do
            log_file = File.open("log.log","a")
            puts 'Exiting...'
            log_file.write("Hoo")
            exit
        end
    end
end


class SignalExecutor
    include SignalHandler
end

obj = SignalExecutor.new
obj.term_handler

i = 0
loop do 
    i += 1
end
