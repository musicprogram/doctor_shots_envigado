class Bill < ActiveRecord::Base
  has_many :bill_licors
  accepts_nested_attributes_for :bill_licors, reject_if: :all_blank, allow_destroy: true  
end
