class TasksController < ApplicationController

  before_filter :find_current_user, only: [:index, :create]
  before_filter :find_task, except: [:new, :index, :create]
  before_filter :find_projects, except: [:show, :destroy]
  before_filter :authenticate_user!

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user

    return redirect_to @task if @task.save
    render 'index'
  end

  def update
    return redirect_to if @task && @task.update(task_params)
    render 'edit'
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def find_current_user
    @tasks = Task.where(user: current_user)
  end

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