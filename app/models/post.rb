class Post < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :title, :summary, :body, presence: true
end
