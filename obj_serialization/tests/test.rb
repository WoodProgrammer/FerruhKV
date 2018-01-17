require 'test/unit'
class HashClass
    def initialize(my_hash)
        @my_hash = my_hash
    end

    def serialize
        File.open("test_hash.fr","w+") do |f|
            Marshal.dump(@my_hash,f)
        end
    end

    def de_serialize
        returned_hash = {}
        File.open('test_hash.fr') do |f|  
            returned_hash = Marshal.load(f)  
          end  
        return returned_hash 
    end
end
