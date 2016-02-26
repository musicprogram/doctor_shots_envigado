class Milliliter < ActiveRecord::Base
  belongs_to :shot
  belongs_to :licor
end
