def are_anagrams(word1, word2)
word1.downcase.split('').sort == word2.downcase.split('').sort
end
# p are_anagrams("blue", "uble")
# p are_anagrams("strawberry", "yrrebwatrs")
# p are_anagrams("potato", "dog")




 #---------------- metodo anagramas

def canonical(word)
  word.downcase.split(//).sort
end
 
def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end
 
 #Driver code
# p is_anagram?("3ice.man","Cin3e.ma")
# p is_anagram?("iceman", "Cinema")
# p is_anagram?("Maria","Airam")
# p canonical("Maria")
# p canonical("Aimar")



def anagrams_form(array)
  word_array = {}
  array.each do |word|
    canonica = word.chars.sort.join 
    if word_array.has_key?canonica
      word_array[canonica] << word
    else
      word_array[canonica] = [word]
    end  
  end
  word_array.values
end

# def anagrams_form(array)
#   array.group_by { |element| element =~ /[downcase.chars.sort]/ }.values
#   array.group_by {|word| word.chars.sort}

# end


array =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


p anagrams_form(["mama", "amma", "maria", "banana", "tlumpy", "lumpty"]) #==
p anagrams_form(["pear", "bear", "tomato", "cucumber"]) #==