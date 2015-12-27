class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :projectname
      t.string :user
      t.string :taskname
      t.text :description
      t.timestamp :timestart
      t.timestamp :timestart
    end
  end
end
