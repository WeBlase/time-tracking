class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  def task_info
    "#{project.name} #{taskname} #{description}"
  end
end