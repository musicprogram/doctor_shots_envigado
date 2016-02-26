class Licor < ActiveRecord::Base
  has_many :milliliters
  belongs_to :category_licor
  has_many :milliliter_cocks
  
    def nombre_cat
      completo = nombre + " " + category_licor.nombre
    end  
  
end
