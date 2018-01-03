trap('INT') do #if user have keyboard interrupt
    puts 'Exiting...'
    exit
end
trap('TERM') do #if instance is down
    puts 'Term Incoming ..'
    exit
end
