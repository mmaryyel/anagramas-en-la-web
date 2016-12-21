# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 



File.open("words", "r") do |f|
  f.each_line do |word|
    Word.create(word: word.chomp.downcase,  cannonical: Word.to_cannonical(word).strip )
  end
end

