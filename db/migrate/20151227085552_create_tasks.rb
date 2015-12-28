class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project
      t.references :user
      t.string :taskname
      t.text :description
      t.datetime :timestart
      t.datetime :timeend
    end
  end
end
