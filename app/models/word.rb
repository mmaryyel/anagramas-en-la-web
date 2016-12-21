class Word < ActiveRecord::Base
  # Remember to create a migration!
  
  def self.to_cannonical(word)
    word.downcase.split("").sort.join
  end

  def self.search_anagrams(word)
    
    Word.where(cannonical: Word.to_cannonical(word))

  end


end
