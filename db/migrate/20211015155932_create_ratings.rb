class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rater_id
      t.string :description
      t.integer :photo_id
      t.integer :score_for_photo
      t.integer :rater_feed_back

      t.timestamps
    end
  end
end
