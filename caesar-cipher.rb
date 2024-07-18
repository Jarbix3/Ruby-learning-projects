def caesar_cipher(string,n)
   
    bytes = string.bytes
    cipher = bytes.map do |ascii|
        if ascii.between?(65,90)
                if n >= 0
                    ascii + n > 90 ? (ascii + n) - 26 : ascii + n
                else
                    ascii + n < 65 ? (ascii + n) + 26 : ascii + n
                end
            elsif ascii.between?(97,122)
                if n >= 0
                    ascii + n > 122 ? (ascii + n) - 26 : ascii + n
                else
                    ascii + n < 97 ? (ascii +n) + 26 : ascii + n
                end
            else
                ascii
            end
        end
        cipher_string = cipher.map!{|a| a.chr}.join
        p cipher_string
end

print "Enter string to cipher : "
string = gets.chomp
print "Enter the cipher factor : "
n = gets.chomp.to_i

caesar_cipher(string,n)