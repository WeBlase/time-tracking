ActiveAdmin.register User do
  index do
    column :first_name
    column :last_name
    default_actions
    end
  form do |f|
    f.inputs "Create User" do
      f.input :first_name
      f.input :last_name
    end
      f.actions
  end
  permit_params :first_name, :last_name
end