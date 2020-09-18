class DaysController < ApplicationController
    def show
        @day = Day.find(params[:id])
    end

    def create
        @habit = Habit.find(params[:habit])

        @day = Day.create(day_params)
        @day = Day.find_by(logs_date: @day.logs_date)
        @day.logs.create(habit: @habit)
        
        redirect_to habit_path(@habit)
    end

    def day_params
        params.require(:day).permit(:logs_date)
    end
end
