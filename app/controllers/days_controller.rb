class DaysController < ApplicationController
    def index
        @days = Day.all
    end
    
    def show
        if params[:day].present?
            @day = Day.find_by(logs_date: params[:day][:logs_date])
        else
            @day = Day.find(params[:id])
        end
    end

    def create
        @day = Day.create(day_params)
        @day = Day.find_by(logs_date: @day.logs_date)
        @habit = Habit.find(params[:habit])
        @day.logs.create(habit: @habit)
        
        redirect_to habit_path(@habit)
    end

    private
    
    def day_params
        params.require(:day).permit(:logs_date)
    end
end
