class PigLatinizer
  
  def piglatinize(word)
    word[0] =~ /[AEIOUaeiou]/ ? word.gsub(/([AEIOUaeiou])(\w+)*/, '\1\2way') : word.gsub(/([^AEIOUaeiou])(\w+)*/, '\2\1ay')
  end
  
  
  
end