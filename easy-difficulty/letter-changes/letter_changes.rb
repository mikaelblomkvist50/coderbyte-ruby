class Word

  def self.letter_changer(sentence)

    array = []
    sentence.each_char do |character|
      if character.match(/^[[:alpha:]]$/) then new_character = character.next
        if new_character.scan(/[aeiou]/).any?
          array << new_character.upcase!
        else
          array << new_character
        end
      else
        array << character
      end
    end

    array.join
  end

end

# puts Word.letter_changer("sentence")
# puts Word.letter_changer("a confusing /:sentence:/[ this is not!!!!!!!~")

# >> tfOUfOdf
# >> b dpOgvtjOh /:tfOUfOdf:/[ UIjt jt OpU!!!!!!!~
