class Recipe < ActiveRecord::Base
  belongs_to :user  
  has_many :comments
  validates :user_id, presence: true
  validates :name, presence: true
  validates :ingredient, presence: true
  validates :desc, presence: true
  validates :mealtime, presence: true
  validates :style, presence: true
  has_attached_file :picture, :styles => { :small => "150x150>", :medium => "300x300>" , :large => "480x480"},
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_size :picture, :less_than => 5.megabytes
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
end
