class String
        def palindrome?
                string = self.downcase.gsub(/\W/, "")

                if(string == string.reverse)
                        true
                else
                        false
                end
        end

end

module Enumerable
        def palindrome?
                value = self.collect{|x| x}
                if(value == value.reverse)
                        true
                else
                        false
                end
        end
end

puts "foo".palindrome?
puts "A man, a plan, a canal -- Panama".palindrome?
puts [1,2,3,2,1].palindrome?
puts "34741".palindrome?
