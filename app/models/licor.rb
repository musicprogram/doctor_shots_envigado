class Licor < ActiveRecord::Base
  has_many :milliliters
  belongs_to :category_licor
  has_many :milliliter_cocks
  has_many :bill_licors
  
    def nombre_cat
      self.completo = nombre + " " + category_licor.nombre
    end  
  
end
