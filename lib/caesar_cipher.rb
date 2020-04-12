# frozen_string_literal: true

# Class to encrypt a message.
class CaesarCipher
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  def self.encrypt(message, number)
    coded_chars = message.chars.map do |char|
      if char =~ /[^a-zA-Z]/
        char
      else
        index = ALPHABET.index(char.downcase)
        new_index = (index + number) % 26
        new_char = ALPHABET[new_index]
        char =~ /[A-Z]/ ? new_char.upcase : new_char
      end
    end
    coded_chars.join
  end
end
