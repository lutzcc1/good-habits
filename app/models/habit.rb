class Habit < ApplicationRecord
    has_many :logs
    has_many :days, through: :logs
end
