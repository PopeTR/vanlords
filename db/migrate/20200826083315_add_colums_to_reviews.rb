class AddColumsToReviews < ActiveRecord::Migration[6.0]
  def change
  	add_reference :reviews, :users, foreign_key: true
  end
end
