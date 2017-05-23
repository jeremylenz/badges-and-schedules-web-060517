# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(peeps)
  badges = Array.new
  peeps.each do |name|
    badges.push(badge_maker(name))
  end
  badges
end

def assign_rooms(attendees)
  room_welcomes = Array.new
  attendees.each_with_index do |name, index|
    room_welcomes.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
  end
  room_welcomes
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  badges.each do |badge|
    puts badge
  end
  rooms.each do |room_assignment_message|
    puts room_assignment_message
  end
  
end
