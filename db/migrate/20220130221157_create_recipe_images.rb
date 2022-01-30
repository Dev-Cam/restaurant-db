class CreateRecipeImages < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_images do |t|
      t.text :image_url

      t.timestamps
    end
  end
end
