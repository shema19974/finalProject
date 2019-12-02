class Post < ApplicationRecord
  belongs_to :employee
  mount_uploader :image, ImageUploader
  has_many :comments, dependent: :destroy
  validates :title, :content, :image, presence:true 
end
