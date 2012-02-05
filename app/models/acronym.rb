class Acronym < ActiveRecord::Base
  has_many :definitions
  
  accepts_nested_attributes_for :definitions, :allow_destroy => true
end
