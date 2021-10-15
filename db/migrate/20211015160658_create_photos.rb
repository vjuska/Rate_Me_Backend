class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :img_url
      t.integer :lighting_score
      t.integer :photo_quality
      t.integer :wearing_sunglasses
      t.integer :number_of_people

      t.timestamps
    end
  end
end
