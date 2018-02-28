class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, source: :user

  validates :content, presence: true
  validates :content,length:{maximum:200}
  mount_uploader :image, ImageUploader
end
