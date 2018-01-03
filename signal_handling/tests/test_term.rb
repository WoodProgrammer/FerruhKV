trap('INT') do #if user have keyboard interrupt
    puts 'Exiting...'
    exit
end
i = 0
loop do
	i += 1
end

trap('TERM') do #if instance is down
    puts 'Term Incoming ..'
    exit
end
