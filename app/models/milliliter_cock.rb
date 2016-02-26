class MilliliterCock < ActiveRecord::Base
  belongs_to :licor
  belongs_to :cocktail
end
