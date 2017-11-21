class TasksController < ApplicationController
  before_action :set_tasks, only: [:show, :edit, :update, :destroy, :done]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def done
    p "je suis la!"
    @task.update_attributes(done: true)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :done)
  end

  def set_tasks
    @task = Task.find(params[:id])
  end

end
