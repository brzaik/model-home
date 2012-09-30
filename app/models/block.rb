class Block < ActiveRecord::Base
  attr_accessible :additional_styles, :additional_tags, :column_id, :content_name, :position
end
