class TasksController < ApplicationController
before_action :find_task, only: [:show, :edit, :update, :destroy]
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(params_task)
        @task.save
        redirect_to tasks_path
    end

    def show
    end

    def edit
    end

    def update
        @task.update(params_task)
        redirect_to tasks_path
    end

    def destroy
        @task.destroy
        redirect_to tasks_path
    end

    private

    def find_task
        @task = Task.find(params[:id])
    end

    def params_task
        params.require(:task).permit(:title, :details, :completed)
    end
end
