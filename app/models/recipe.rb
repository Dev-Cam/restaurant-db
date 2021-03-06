class Recipe < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :recipe_images
  has_many :comments
  belongs_to :user, optional: true
  validates :name, length: {minimum: 2}
end
