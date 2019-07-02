require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')


class PersonTest < MiniTest::Test

def setup()
  @person = Person.new("Gav", 21)
end

def test_name
  assert_equal("Gav", @person.name())
end

def test_age
  assert_equal(21, @person.age())
end



end
