require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')



class BusStopTest < MiniTest::Test

def setup
  @bus_stop = BusStop.new("Castle Terrace")
  @person = Person.new("Gav", 21)
  @person2 = Person.new("Fidelma", 26)
  @people = [@person, @person2]
end


def test_name
  assert_equal("Castle Terrace", @bus_stop.name())
end

def test_number_of_people_in_queue
  assert_equal(0, @bus_stop.number_of_people_in_queue  )
end

def test_add_person_to_queue
  @bus_stop.add_person_to_queue(@person)
  @bus_stop.add_person_to_queue(@person)
  assert_equal(2, @bus_stop.number_of_people_in_queue)
end

def test_remove_everyone_from_queue
  @bus_stop.add_person_to_queue(@person)
  @bus_stop.remove_everyone_from_queue
  assert_equal(0, @bus_stop.number_of_people_in_queue())
end



end
