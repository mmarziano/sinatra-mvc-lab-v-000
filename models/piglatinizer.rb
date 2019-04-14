class PigLatinizer 
  attr_accessor :user_phrase, :phrase
  
  def initialize(user_phrase)
    @user_phrase = user_phrase
    self.piglatinize
  end 
  
  def piglatinize
    words = []
    piglatin_words = []
    words << self.user_phrase.split(' ')
    words.first.each do |i|
      if i.downcase.start_with?('a','e','i','o','u')
        new_word = i + 'way'
        piglatin_words << new_word
      else
        modified = i.slice(1, i.split('').count)
        first_letter = i.split('').first
        new_word = modified + first_letter + 'ay'
        piglatin_words << new_word
      end 
      @phrase = piglatin_words.join(' ')
    end
  end 
  
end 