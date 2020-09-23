class Word
  def initialize ()
  end

  def scrabble_score(word)
    scores = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }
    total_score = 0
    word.downcase().each_char { | letter | total_score += scores.fetch(letter) }
    return total_score
  end
end

class Sentence < Word
  def initialize()
  end

  def split(sentence)
    array = sentence.split(" ")
    return array
  end

  def add_sentence(words)
    score = 0
    (split(words)).each do |word|
      score += scrabble_score(word)
    end
    return score
  end
end