class DaysController < ApplicationController
    def index
        @days = Day.all
    end
    
    def show
        # handles when the user use the date selector (days/partials/date_selector)
        # or picks a date by clicking directly on a date link
        if params[:day].present?
            @day = Day.find_by(logs_date: params[:day][:logs_date])
        else
            @day = Day.find(params[:id])
        end
    end

    def create
        if Day.exists?(day_params)
            @day = Day.find_by(day_params)
        else 
            @day = Day.create(day_params)
        end

        @habit = Habit.find(params[:habit])
        @day.logs.create(habit: @habit)
        
        redirect_to habit_path(@habit)
    end

    private
    
    def day_params
        params.require(:day).permit(:logs_date)
    end
end
