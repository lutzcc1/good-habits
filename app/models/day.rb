class Day < ApplicationRecord
    validates :logs_date, uniqueness: true
    has_many :logs
    has_many :habits, through: :logs
end
