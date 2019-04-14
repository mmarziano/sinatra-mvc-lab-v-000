class PigLatinizer 
  
  
  def piglatinize(user_phrase)
    words = []
    piglatin_words = []
    words << user_phrase.split(' ')
    words.first.each do |i|
      if i.downcase.start_with?('a','e','i','o','u')
        new_word = i + 'way'
        piglatin_words << new_word
      else
          if i.downcase.split(/([aeiou].*)/).first.length > 1 
            cluster = i.downcase.split(/([aeiou].*)/).first.length
            modified = i.slice(cluster-1, i.split('').count)
            first_letters = i.split('')[0-cluster-1]
            new_word = modified + first_letters + 'ay'
            piglating_words << new_word
          end 
        modified = i.slice(1, i.split('').count)
        first_letter = i.split('').first
        new_word = modified + first_letter + 'ay'
        piglatin_words << new_word
      end 
    end
    phrase = piglatin_words.join(' ')
    phrase
  end 
  
end 