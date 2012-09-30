class Page < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :description, :is_homepage, :is_project, :upload_id, :main_menu_item_id, :template_id, :title
  attr_accessible :image_attributes

  has_one :main_menu_item
  belongs_to :template
  has_many :rows
  has_many :images, :as => :imageable
  has_many :videos, :as => :videoable
  has_one :upload

  scope :homepage, where(:is_homepage => true)
  scope :non_homepages, where(:is_homepage => false)

  validates_uniqueness_of :title

  friendly_id :title, :use => :slugged

end
