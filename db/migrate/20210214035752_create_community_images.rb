class CreateCommunityImages < ActiveRecord::Migration[6.0]
  def change
    create_table :community_images do |t|
      t.string :community_image, null: false
      t.references :community, name: "image"
      t.timestamps
    end
  end
end
