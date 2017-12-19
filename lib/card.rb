class Card

  def initialize(question, answer)
    @question = question
    @answer   = answer
  end

  def question
    @question
  end

  def answer
    @answer
  end

end

#card = Card.new("What is the capital of Alaska?", "Juneau")
#p card.question
#p card.answer
