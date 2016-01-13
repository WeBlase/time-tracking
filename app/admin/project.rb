ActiveAdmin.register Project do
  index do
    column :name
    actions
  end
  form do |f|
    f.inputs "Create Project" do
      f.input :name
    end
      f.actions
  end
  permit_params :name
end
