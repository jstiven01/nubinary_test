class TasksController < ApplicationController
  
  def index
    @tasks =  Task.all
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      flash[:success] = 'task created successfully'
      redirect_to task_path(@task)
    else
      flash.now[:danger] = 'Failed to create a new task'
      render 'new'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :status, :description)
  end
end
