def substrings(string, dictionary)
    output_hash = {}
    dictionary.each do |substring|
      output_hash[substring] = string.downcase.scan(substring).count if string.downcase.include?(substring)
    end

    output_hash
end
print "Write your string: "
str = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(str,dictionary)
