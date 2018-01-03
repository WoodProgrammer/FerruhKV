log_file = File.open("log.log","a")
trap('TERM') do
    puts 'Exiting...'
    log_file.write("Hoo")
    exit
end
i = 0
loop do
	i += 1
end
