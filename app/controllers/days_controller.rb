class DaysController < ApplicationController
    def create
        @day = Day.create(day_params)
        @day = Day.find_by(logs_date: @day.logs_date)
        @habit = Habit.find(params[:habit])
        @day.logs.create(habit: @habit)
        redirect_to habit_path(@habit)
    end

    def day_params
        params.require(:day).permit(:logs_date)
    end
end
