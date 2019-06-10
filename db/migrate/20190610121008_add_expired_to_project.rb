class AddExpiredToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :expired, :boolean, default: false
  end
end
