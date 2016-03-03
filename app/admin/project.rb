ActiveAdmin.register Project do

  permit_params :name

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
end
