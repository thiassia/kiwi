class Adcategory < ActiveRecord::Base  
  has_many :subcategories
  has_many :categories, :through => :subcategories
  has_ancestry
end
