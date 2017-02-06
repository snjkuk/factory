class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :pro_name
      t.text :pro_title
      t.text :pro_type

      t.timestamps
    end
  end
end
