class Cocktail < ActiveRecord::Base
  has_many :milliliter_cocks
  accepts_nested_attributes_for :milliliter_cocks, reject_if: :all_blank, allow_destroy: true  
  
  has_many :ingredient_cocks
  accepts_nested_attributes_for :ingredient_cocks, reject_if: :all_blank, allow_destroy: true   
  
  
  belongs_to :category
end
