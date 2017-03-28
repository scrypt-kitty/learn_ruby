#write your code here

def translate(word)
  
  pig = ""

  if word.split(" ").count > 1
    for each in word.split(" ")
      pig += translate(each) + " "
    end
    pig[pig.length-1] = ''
    return pig
  end

  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

  first_letter = word[0]
  second_letter = word[1]
  third_letter = word[2]

  for each in vowels
    if first_letter == each
      return word + "ay"
    end
  end

  for each in consonants
    if first_letter == each
      for each in consonants
        if second_letter == each || (first_letter + second_letter) == 'qu'
          for each in consonants
            if third_letter == each || (second_letter + third_letter) == 'qu'
              pig = word + first_letter + second_letter + third_letter + "ay"
              pig[0] = ''
              pig[0] = ''
              pig[0] = ''
              return pig
            end
          end
          pig = word + first_letter + second_letter + "ay"
          pig[0] = ''
          pig[0] = ''
          return pig
        end
      end

      word[0] = ''
      pig = word
      pig += first_letter
      pig += "ay"
      return pig
      
    end
  end

end

print translate("eat pie")
