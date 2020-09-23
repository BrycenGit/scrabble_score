require('rspec')
require('scrabble_score')

describe('Word#scrabble_score') do
  it("returns a scrabble score for a letter") do
    word = Word.new()
    expect(word.scrabble_score('Hello')).to(eq(8))
  end
end
describe('Sentence#scrabble_score') do
  it("returns a scrabble score for the word 'hello' ") do
    new_sentence = Sentence.new()
    expect(new_sentence.add_sentence("hello Hello")).to(eq(16))
  end
end