require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    @rooms = {}

    capacities.each do |room_name, capacity|
        @rooms[room_name] = Room.new(capacity)
    end
  end

  def name
    @name.split(" ").each { |word| word.capitalize! }.join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(name)
    rooms.include? name
  end

  def check_in(person, room)
    if !self.room_exists? room
        p "sorry, room does not exist"
    else
        if rooms[room].add_occupant(person)
            p "check in successful"
        else
            p "sorry, room is full"
        end
    end
  end

  def has_vacancy?
    rooms.any? { |name, room| !room.full? }
  end

  def list_rooms
    rooms.each do |name, room| 
        puts "#{name} : #{room.available_space}"
    end
  end

end
