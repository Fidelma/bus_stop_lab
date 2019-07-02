require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')


class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("Castle Terrace")
    @person = Person.new("Gav", 21)
    @person2 = Person.new("Fidelma", 26)
    @people = [@person, @person2]
  end

  def test_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_number_of_passengers
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_add_person_to_bus
    passenger_1 = "Fidelma"
    @bus.add_person_to_bus(passenger_1)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_remove_person_from_bus
    passenger_1 = "Fidelma"
    passenger_2 = "Gav"
    @bus.add_person_to_bus(passenger_1)
    @bus.add_person_to_bus(passenger_2)
    @bus.remove_person_from_bus(passenger_1)
    assert_equal(1, @bus.number_of_passengers)
  end

  def test_empty_bus
    passenger_1 = "Fidelma"
    @bus.add_person_to_bus(passenger_1)
    @bus.empty_bus(@bus)
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_collect_all_passengers
    @bus_stop.add_person_to_queue(@person)
    @bus_stop.add_person_to_queue(@person)
    @bus.pick_up(@bus_stop)
    assert_equal(2, @bus.number_of_passengers)
    assert_equal(0, @bus_stop.number_of_people_in_queue)
  end

end
