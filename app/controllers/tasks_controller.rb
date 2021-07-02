class TasksController < ApplicationController
  before_action :autheniticate_user
  
  def index
    @tasks = Task.find_by(id: params[:id])
    @task = Task.where(user_id: current_user.id)
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(title: params[:title], user_id: current_user.id)
    
    if @task.save
      redirect_to tasks_path #タスク管理画面にリダイレクト
    else
      render new_task_path
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.title = params[:title]
    if @task.save
      redirect_to tasks_path
    else
      render edit_task_path
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
end
