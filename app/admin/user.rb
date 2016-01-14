ActiveAdmin.register User do
  permit_params :first_name, :last_name

  index do
    selectable_column
    column :id
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

end
