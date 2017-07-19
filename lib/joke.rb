class Joke
  attr_reader :id,
              :question,
              :answer

  def initialize(hash={})
    @id = hash[:id]
    @question = hash[:question]
    @answer = hash[:answer]
  end


  def id
    @id
  end

  def question
    @question
  end

  def answers
    @answer
  end


end
