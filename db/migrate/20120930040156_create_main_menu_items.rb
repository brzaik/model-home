class CreateMainMenuItems < ActiveRecord::Migration
  def change
    create_table :main_menu_items do |t|
      t.string :title
      t.integer :position
      t.integer :page_id

      t.timestamps
    end
  end
end
