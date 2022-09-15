# frozen_string_literal: true

# class for Caesar Cipher function
class CaesarCipher
  def encipher(string, shift)
    encipher_array = string.chars.map do |char|
      if char =~ /[A-Z]/
        ((char.ord - 65 + shift) % 26 + 65).chr
      elsif char =~ /[a-z]/
        ((char.ord - 97 + shift) % 26 + 97).chr
      else
        char
      end 
    end
    encipher_array.join
  end
end