class Column < ActiveRecord::Base
  attr_accessible :additional_styles, :additional_tags, :position, :row_id, :span_width
end
