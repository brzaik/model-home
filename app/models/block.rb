class Block < ActiveRecord::Base
  attr_accessible :column_id, :content_name, :position, :additional_styles, :additional_tags
  attr_accessible :richtext_attributes
  attr_accessible :video_attributes
  attr_accessible :image_attributes
  attr_accessible :twitter_board_attributes
  default_scope order('position ASC')

  belongs_to :column
  
  has_one :richtext, :dependent => :destroy
  has_one :video, :as => :videoable, :dependent => :destroy
  has_one :image, :as => :imageable, :dependent => :destroy
  has_one :twitter_board, :dependent => :destroy

  accepts_nested_attributes_for :richtext
  accepts_nested_attributes_for :video
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :twitter_board
end
