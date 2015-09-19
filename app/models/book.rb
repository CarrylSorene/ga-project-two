class Book < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  mount_uploader :cover, CoverUploader
end
