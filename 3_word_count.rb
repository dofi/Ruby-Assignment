def count_words(string)
        Hash[
                string.downcase.gsub(/\w+/).
                        group_by{|word| word}.
                                map{|word, count| [word, count.size]}
        ]
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")

