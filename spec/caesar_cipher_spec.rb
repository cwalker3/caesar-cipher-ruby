require './lib/caesar_cipher'

describe CaesarCipher do
  it "returns a string shifted by 1" do
    expect(CaesarCipher.new.encipher('abcd', 1)).to eql('bcde')
  end

  it "returns a stirng shifted by -1" do
    expect(CaesarCipher.new.encipher('abcd', -1)).to eql('zabc')
  end

  it "returns a string shifted by 1000" do
    expect(CaesarCipher.new.encipher('abcd', 1000)).to eql('mnop')
  end

  it "returns an empty string" do
    expect(CaesarCipher.new.encipher('', 1000)).to eql('')
  end

  it "doesn't change punctuation" do
    expect(CaesarCipher.new.encipher('!.,_-?', 2)).to eql('!.,_-?')
  end

  it "keeps case" do
    expect(CaesarCipher.new.encipher('Hello', 1)).to eql('Ifmmp')
  end

end