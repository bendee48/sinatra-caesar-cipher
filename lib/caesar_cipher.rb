class CaesarCipher
  def self.encrypt(message, number)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    coded_chars = message.chars.map do |char|
      if char =~ /[^a-zA-Z]/
        char
      else
        index = alphabet.index(char.downcase)
        new_index = (index + number) % 26
        new_char = alphabet[new_index]
        char =~ /[A-Z]/ ? new_char.upcase : new_char
      end
    end
    coded_chars.join
  end
end