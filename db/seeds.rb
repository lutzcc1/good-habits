# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@programming = Habit.create!(name: "programming")
@run = Habit.create!(name: "run")
@meditate = Habit.create(name: "meditate")

(0..4).each do |days|
    @programming.logs.create!(day: Day.create!(logs_date: Time.new.to_date - days))
end

[0, 2, 4].each do |days|
    @meditate.logs.create!(day: Day.create!(logs_date: Time.new.to_date - days))
end

@run.logs.create!(day: Day.create!(logs_date: Date.new(1993, 9, 10)))

