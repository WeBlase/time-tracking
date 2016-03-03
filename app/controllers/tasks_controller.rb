class TasksController < ApplicationController

  before_filter :find_task, except: [:new, :index, :create]
  before_filter :find_projects, except: [:show, :index, :destroy]

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def index
    @task = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.user = User.first

    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def update
    if @task && @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def find_projects
    @projects = Project.all
  end

  def task_params
    params.require(:task).permit(:taskname, :description, :project_id, :user_id)
  end

  def find_task
    @task = Task.where(id: params[:id]).first
  end
end