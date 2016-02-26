class Category < ActiveRecord::Base
  has_many :shots
  has_many :cocktails
end
