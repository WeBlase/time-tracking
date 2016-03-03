class TasksController < ApplicationController

  before_filter :find_task, only: [:show, :edit, :update, :destroy]
  before_filter :find_projects, only: [:new, :edit, :create, :update]

  def show
    find_task
  end

  def new
    find_projects
    @task = Task.new
  end

  def edit
    find_projects
    find_task
  end

  def index
    @task = Task.all
  end

  def create
    find_projects
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def update
    find_projects
    find_task

    if @task && @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    find_task
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