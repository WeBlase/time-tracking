ActiveAdmin.register Task do
  form do |f|
    f.inputs do
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.first_name}, #{u.last_name}", u.id]}
      f.input :project
      f.input :taskname
      f.input :description
      f.input :timestart
      f.input :timeend
    end
  end
end
