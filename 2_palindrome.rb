def palindrome?(string)
        string = string.downcase.gsub(/\W/, "")

        if(string == string.reverse)
                true
        else
                false
        end
end

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra")
