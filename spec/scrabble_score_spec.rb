require('rspec')
require('scrabble_score')

describe('Word#scrabble_score') do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble_score()).to(eq(1))
  end

  it("returns a scrabble score for the word 'hello' ") do
    new_word = Word.new("hello")
    expect(new_word.scrabble_score()).to(eq(8))
  end
end
