class TasksController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    @task = Task.new
    @id = session[:user_id]
  end

  def change
    @task_id = params[:task_id]
    if @task_id == nil
      redirect_to '/authorized'
    else
      @task = Task.find_by(id: @task_id)
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.save 
      redirect_to '/authorized'
    else
      render :new
    end 
  end

  def update  
    @task = Task.find_by_id(params[:id])
    if @task.update(task_params)
      redirect_to '/authorized'
    else
      render '/categories/change'
    end
  end

  def delete  
    Task.find_by_id(params[:id]).delete
    redirect_to '/authorized'
  end

  private 

  def task_params
    params.require(:task).permit(:cat_name,:user_id,:cat_details)
  end
end
