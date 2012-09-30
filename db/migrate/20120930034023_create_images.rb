class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.integer :upload_id
      t.string :caption
      t.integer :position
      t.string :url_link

      t.timestamps
    end
  end
end
