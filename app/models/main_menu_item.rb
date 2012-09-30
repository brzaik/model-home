class MainMenuItem < ActiveRecord::Base
  attr_accessible :page_id, :position, :title
  default_scope order('position ASC')

  has_one :page
end
