class BillLicor < ActiveRecord::Base
  belongs_to :bill
  belongs_to :licor
  
  before_validation :total_mililitros
  
  def total_mililitros
    self.total_mili = licor.mililitros * cantidad
  end
  
  before_validation :totales
  
  def totales
    self.total_valor = licor.valor * cantidad
  end  
  
end
