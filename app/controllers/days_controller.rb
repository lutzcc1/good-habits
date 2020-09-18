class DaysController < ApplicationController
    def show
        if params[:day].present?
            date = Date.new(
                params[:day]["logs_date(1i)"].to_i,
                params[:day]["logs_date(2i)"].to_i,
                params[:day]["logs_date(3i)"].to_i
            )
            @day = Day.find_by(logs_date: date)
        else
            @day = Day.find(params[:id])
        end
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
