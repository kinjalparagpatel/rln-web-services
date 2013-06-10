class DataType < ActiveRecord::Base
  attr_accessible :code, :description, :display

  #track_assay_changes
  has_many :track_assay_changes, :foreign_key => "change_type_cd", :dependent => :restrict

  #partner_org_components
  has_many :partner_org_components, :foreign_key => "component_type_cd", :dependent => :restrict

  #organizations
  has_many :organizations, :foreign_key => "org_type_cd", :dependent => :restrict

  #standard_components
  has_many :standard_components, :foreign_key => "component_type_cd", :dependent => :restrict
  
  #track_order_change
  has_many :track_order_changes, :foreign_key => "change_type_cd", :dependent => :restrict
end
