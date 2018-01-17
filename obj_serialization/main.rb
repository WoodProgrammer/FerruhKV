class HashClass
    def initialize(my_hash,dump_file)
        @my_hash = my_hash
        self.dump_file = dump_file
    end

    def serialize
        File.open("#{self.dump_file}.fr","w+") do |f|
            Marshal.dump(@my_hash,f)
        end
    end

    def de_serialize
        returned_hash = {}
        File.open("#{self.dump_file}.fr") do |f|  
            returned_hash = Marshal.load(f)  
          end  
        return returned_hash 
    end
end
