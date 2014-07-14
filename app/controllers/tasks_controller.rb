class TasksController < ApplicationController
  def index
  	@tasks = Task.where(status: 0).order("created_at desc").all
  end

  def new
  	@task = Task.new
  	@task.status = 0
  end
end
