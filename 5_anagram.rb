def combine_anagrams(words)
        words.group_by{|word| word.downcase.chars.sort.join}
end

puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
