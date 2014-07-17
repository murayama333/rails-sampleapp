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

  def edit
	@task = Task.find(params[:id])
  end

  def update
  	@task = Task.find(params[:id])
	if @task.update(task_params)
	  redirect_to :tasks
	else
	  render 'edit'
	end
  end

  def destroy
  	@task = Task.find(params[:id])
	@task.destroy
	redirect_to :tasks
  end
  private
  def task_params
	params.require(:task).permit(:title, :memo, :status)
  end
end
