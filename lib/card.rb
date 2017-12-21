class Card
  attr_reader :question,
              :answer

  def initialize(question, answer)
    @question = question
    @answer   = answer
  end
end

#card = Card.new("What is the capital of Alaska?", "Juneau")
#p card.question
#p card.answer
