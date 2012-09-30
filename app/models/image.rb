class Image < ActiveRecord::Base
  attr_accessible :caption, :imageable_id, :imageable_type, :position, :upload_id, :url_link
end
