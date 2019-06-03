class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
    @task.save
  end

  def create
    @task = Task.new(content: params[:content], detail: params[:detail])
    @task.save
    redirect_to("/tasks/show/#{@task.id}")
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to('/tasks/index')
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to('/tasks/index')
  end

  private

    def task_params
      params.require(:task).permit(:content, :detail)
    end

end
