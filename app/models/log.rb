class Log < ApplicationRecord
  belongs_to :habit
  belongs_to :day
  validates :habit, uniqueness: { scope: :day }
end
