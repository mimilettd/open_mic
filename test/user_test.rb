require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  # def test_it_requires_joke_class
  #   sal = User.new("Sal")
  # end

  def test_it_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_it_can_learn_jokes
    sal = User.new("Sal")
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    assert sal.learn(joke)
    assert sal.jokes
  end

  def test_it_can_tell_others_joke
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    sal = User.new("Sal")
    ali = User.new("Ali")
    sal.tell(ali, joke)
    assert ali.jokes
  end

  def test_other_person_jokes
    skip
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    sal = User.new("Sal")
    ali = User.new("Ali")
    sal.tell(ali, joke)
    ali.jokes
    assert_equal 1, ali.jokes.count
  end
end
