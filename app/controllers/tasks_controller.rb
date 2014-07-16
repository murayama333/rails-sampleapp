class TasksController < ApplicationController
  def index
  	@tasks = Task.where(status: 0).order("created_at desc").all
  end

  def new
  	@task = Task.new
  	@task.status = 0
  end

  def create
	@task = Task.new(task_params)
	if @task.save
	  redirect_to :tasks
 	else
	  render 'new'
	end
  end

  private
  def task_params
	params.require(:task).permit(:title, :memo, :status)
  end
end
