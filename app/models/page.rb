class Page < ActiveRecord::Base
  attr_accessible :description, :is_homepage, :is_project, :main_menu_item_id, :slug, :template_id, :title, :upload_id
end
