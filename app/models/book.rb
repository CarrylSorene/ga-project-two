class Book < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :title, presence: true

  mount_uploader :cover, CoverUploader

  # def no_of_stars
  #   self.reviews.average('rating')
  # end

  def average_rating
    total = reviews.map(&:rating).inject(:+) 
    total ? total / reviews.count : 0
  end

end

