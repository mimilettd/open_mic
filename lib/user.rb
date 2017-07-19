require './lib/joke'

class User
  attr_reader :name,
              :jokes,
              :joke

  def initialize(name)
    @name = name
    @joke = Joke.new
  end

  def jokes
    @joke.jokes
  end

  def learn(joke)
    @joke.jokes
  end

  def tell(name, joke)

  end

end
