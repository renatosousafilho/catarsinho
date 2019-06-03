class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description, limit: 300
      t.decimal :target_value, precision: 5, scale: 2

      t.timestamps
    end
  end
end
