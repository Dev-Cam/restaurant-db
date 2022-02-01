class RecipeImage < ApplicationRecord
  belongs_to :recipe, optional: true
end
