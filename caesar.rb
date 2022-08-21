#takes a string and a shift factor, returns a string with letters shifted by the shift factor
def caesar_cipher(string, shift)
  string_array = string.split('')
  encipher_array = string_array.map do |char|
    if char =~ /[A-Z]/
      ((char.ord - 65 + shift) % 26 + 65).chr
	  elsif char =~ /[a-z]/
      ((char.ord - 97 + shift) % 26 + 97).chr
		else
			char
		end 
	end
  encipher_text = encipher_array.join
end