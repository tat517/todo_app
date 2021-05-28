class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(title: params[:title])
    if @task.save
      redirect_to("/tasks/index") #タスク管理画面にリダイレクト
    else
      render("/tasks/new")
    end
  end
  
end
