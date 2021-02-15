class CreateCategoryImages < ActiveRecord::Migration[6.0]
  def change
    create_table :category_images do |t|
      t.references :category
      t.string :image ,name: "image"
      t.timestamps
    end
  end
end
