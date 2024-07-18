dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
   hash = {}
    
    string_arr = string.downcase.split

    string_arr.each do |string|
        dictionary.each do |word|
            if string.include?(word)
                if hash.has_key?(word)
                    hash[word] += 1
                else hash[word] = 1
                end
            end
        end
    end 
  puts hash
end
print "Write your string: "
str = gets.chomp
substrings(str,dictionary)
