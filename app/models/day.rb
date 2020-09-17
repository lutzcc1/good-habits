class Day < ApplicationRecord
    has_many :logs
    has_many :habits, through: :logs
end
