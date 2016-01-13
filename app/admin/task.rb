ActiveAdmin.register Task do
  index do
    column :user do |user|
      User.find(user.user_id).try(:full_name)
      end
    column :project
    column :taskname
    column :description
    column :timestart
    column :timeend
    actions
  end
  form do |f|
    f.inputs "Create Tasks" do
      f.input :user do |user|
        User.find(user.user_id).try(:full_name)
      end
      f.input :project
      f.input :taskname
      f.input :description
      f.input :timestart
      f.input :timeend
      end
      f.actions
  end
  permit_params :user_id, :project_id, :taskname, :description, :timestart, :timeend
end