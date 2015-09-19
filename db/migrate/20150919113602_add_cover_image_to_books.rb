class AddCoverImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :cover, :string
  end
end
