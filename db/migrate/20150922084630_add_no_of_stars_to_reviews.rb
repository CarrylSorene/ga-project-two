class AddNoOfStarsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :no_of_stars, :decimal
  end
end