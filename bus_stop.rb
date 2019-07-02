class BusStop

attr_reader :name, :queue 

  def initialize(name)
    @name = name
    @queue = []
  end

  def number_of_people_in_queue
    return @queue.size
  end

  def add_person_to_queue(name)
    @queue.push(name)
  end

  def remove_everyone_from_queue
    for people in @queue
      @queue.delete(people)
    end
  end

end
