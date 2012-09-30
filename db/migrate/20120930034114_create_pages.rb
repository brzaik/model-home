class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.boolean :is_homepage
      t.boolean :is_project
      t.integer :main_menu_item_id
      t.integer :upload_id
      t.integer :template_id
      t.string :slug

      t.timestamps
    end
  end
end
