class HabitsController < ApplicationController
    def index
        @habit = Habit.new
        @habits = Habit.all
    end

    def show
        @day = Day.new
        @habit = Habit.find(params[:id])
    end

    def create
        @habit = Habit.new(habit_params)
        @habit.save
        
        redirect_to root_path
    end

    def habit_params
        params.require(:habit).permit(:name)
    end
end
