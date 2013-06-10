class StandardComponent < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :component_type_cd, :description, :display, :end_at, :orig_standard_component_id
  
  #partner_org_component
  has_many :partner_org_components, :foreign_key => "standard_component_id", :dependent => :restrict

  #data_type
  belongs_to :data_type, :foreign_key => "component_type_cd"
  validates :data_type, :presence => true
  
  #self Join
  has_many :history, :class_name => "StandardComponent", :foreign_key => "orig_standard_component_id", :dependent => :restrict
  belongs_to :current, :class_name => "StandardComponent", :foreign_key => "orig_standard_component_id"
  #TODO : Add validates logic into controller.
end
