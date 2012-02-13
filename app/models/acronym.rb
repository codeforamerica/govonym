class Acronym < ActiveRecord::Base
  
  has_many :definitions, :dependent => :destroy  
  accepts_nested_attributes_for :definitions, :reject_if => lambda { |a| a[:text].blank? }, :allow_destroy => true
  
  def as_json(options={})
     {:name               => self.name,
      :created_at         => self.created_at,
      :updated_at         => self.updated_at,
      :id                 => self.id,
      :definitions        => self.definitions}
  end
  
end
