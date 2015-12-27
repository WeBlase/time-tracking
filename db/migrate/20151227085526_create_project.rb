class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname
    end
  end
end
