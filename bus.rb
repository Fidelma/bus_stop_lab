class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def number_of_passengers()
    return @passengers.size
  end

  def add_person_to_bus(passenger)
    @passengers.push(passenger)
  end

  def remove_person_from_bus(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus(bus)
    for person in @passengers
      @passengers.delete(person)
    end
  end

  def pick_up(bus_stop)
    @passengers.push(@queue)
    bus_stop.remove_everyone_from_queue
  end

end
