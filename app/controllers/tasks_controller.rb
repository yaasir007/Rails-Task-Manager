class TasksController < ApplicationController

    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(params_task)
        @task.save
    end

    def show
        @task = Task.find(params[:id])
    end

    private

    def params_task
        params.require(:task).permit(:title, :details)
    end
end
