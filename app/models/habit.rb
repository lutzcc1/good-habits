class Habit < ApplicationRecord
    has_many :logs
    has_many :days, through: :logs
    validates :name, uniqueness: true, presence: true

    # returns a boolean array with the log info of the last 5 days
    def current_streak
        log_history = self.days.map {|day| day.logs_date }
        log_history.sort! {|a, b| b <=> a }
        log_history = log_history[0..4]

        days_since_habit_creation = (Time.now.to_date - self.created_at.to_date).to_i
        max_streak = days_since_habit_creation >= 5 ? -4 : -days_since_habit_creation
        recent_days = []
        (max_streak..0).each { |days| recent_days.push(Time.new.to_date + days) }

        recent_days.map { |day| log_history.include? day }
    end
end
