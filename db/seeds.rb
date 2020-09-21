# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

programming = Habit.create!(name: "programming")
run = Habit.create!(name: "run")
meditate = Habit.create!(name: "meditate")

(0..4).each do |days|
    programming.logs.create(day: Day.create(logs_date: Time.new.to_date - days))
    puts "programming: pass #{days}"
end

[1, 3, 5].each do |days|
    meditate.logs.create(day: Day.find(days))
    puts "meditate: pass #{days}"
end

run.logs.create(day: Day.create(logs_date: Date.new(1993, 9, 10)))
puts "run: completed"
