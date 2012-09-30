class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :view_as_admin, :boolean, :default => true
    add_column :users, :approved, :boolean
  end
end
