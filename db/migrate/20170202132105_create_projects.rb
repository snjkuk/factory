class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :title
      t.text :address
      t.timestamps
    end
  end
end
