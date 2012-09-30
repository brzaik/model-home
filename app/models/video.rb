class Video < ActiveRecord::Base
  attr_accessible :title, :url, :videoable_id, :videoable_type
end
