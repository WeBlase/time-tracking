ActiveAdmin.register User do

  permit_params :first_name, :last_name

  index do
    column :first_name
    column :last_name
    actions
  end

  form do |f|
    f.inputs "Create User" do
      f.input :first_name
      f.input :last_name
    end
    f.actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :tasks do |user|
        user.tasks.map(&:taskname).join(', ')
      end
    end

    div class: :history do
      user.tasks.each do |task|
        if task[:timeend].present?
          div t('tasks.index.completed', task_description: task.task_info)
        else
          div t('tasks.index.in_progress', task_description: task.task_info)
        end
      end
    end
  end
end