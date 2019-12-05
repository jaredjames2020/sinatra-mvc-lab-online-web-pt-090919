class PigLatinizer
  
  def piglatinize(word)
    vowels = %w{A E I O U a e i o u}
    word.each_char do |chr|
    index = word.index(chr)
    if index != 0 && vowels.include?(chr.downcase)
      consonants = word.slice!(0..index-1)
      return word + consonants + "ay"
    elsif index == 0 && vowels.include?(chr.downcase)
      return word + "ay"
    end
  end
  end
  
  
  
end