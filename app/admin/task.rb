ActiveAdmin.register Task do
  permit_params :project_id, :user_id, :taskname, :description, :timestart, :timeend
end
