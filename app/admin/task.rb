ActiveAdmin.register Task do
  form do |f|
    f.inputs "Create Tasks" do
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|user| ["#{user.first_name}, #{user.last_name}", user.id]}
      f.input :project
      f.input :taskname
      f.input :description
      f.input :timestart
      f.input :timeend
    end
      f.actions
  end
  permit_params :user, :project, :taskname, :description, :timestart, :timeend
end
