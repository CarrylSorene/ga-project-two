class AddCoverImageAndSummaryToBooks < ActiveRecord::Migration
  def change
    add_column :books, :cover_image, :string
    add_column :books, :summary, :string
  end
end
