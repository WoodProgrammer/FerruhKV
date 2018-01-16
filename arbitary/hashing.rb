A=54059 
B=76963 
C=86969 
FIRSTH=37
SIZE = 10000
def hash1 key
    main_hash = 0
    tmp_hash  = 0
    key.each_char do |k|
        tmp_hash += k.hex
        tmp_hash >> 12
        tmp_hash << 67
        main_hash += tmp_hash
    end
    return main_hash
end

def hash2 key
    h = 0
    key.each_char do |k|
        h = (h * A) ^ (k.hex * B);
    end
    return h % SIZE
end

