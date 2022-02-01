class AddRecipeIdToRecipeImage < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_images, :recipe_id, :integer
  end
end
