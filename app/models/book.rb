class Book < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :title, presence: true

  mount_uploader :cover, CoverUploader

  def no_of_stars
    self.reviews.average('no_of_stars')
  end

end

