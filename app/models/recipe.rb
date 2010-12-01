class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients, :dependent => :destroy
  has_many :foods, :through => :recipe_ingredients, :source => :ingredients
  
  attr_accessor :amount
  attr_accessor :ingredients
  attr_accessor :ingredient_id
  attr_accessor :recipe_id



end
