def caesarCipher(inputString, shiftInteger)
  explodedInputString = inputString.split('')
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
              'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  explodedInputString.map! do |character|
    if character.match(/[A-Z]/)
      character = character.downcase
      currentIndex = alphabet.find_index(character)
      character = alphabet[(currentIndex + shiftInteger) % 26].upcase
    elsif character.match(/[a-z]/)
      currentIndex = alphabet.find_index(character)
      character = alphabet[(currentIndex + shiftInteger) % 26]
    else
      character = character
    end
  end
  explodedInputString.join
end

