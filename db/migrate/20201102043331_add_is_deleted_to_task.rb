class AddIsDeletedToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :is_deleted, :boolean, default: false
  end
end
