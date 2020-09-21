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
        if @habit.save
            redirect_to habit_path(@habit)
        else
            redirect_to root_path
        end
    end

    private

    def habit_params
        params.require(:habit).permit(:name)
    end
end
