def sub_strings(word)
    word = word.downcase
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    word_arr = word.split(' ')

    word_arr.each_with_object(Hash.new(0)) do |word, hash|
        dictionary.each do |substring|
            hash[substring] += 1 if word.include?(substring)
        end
    end
    
end

print "Write your string: "
str = gets.chomp

sub_strings(str)
