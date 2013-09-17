class Subcategory < ActiveRecord::Base
  attr_accessible :adcategory_id, :subcat_id
  belongs_to :adcategory
  belons_to :subcategory, :class_name => "Adcategory"
