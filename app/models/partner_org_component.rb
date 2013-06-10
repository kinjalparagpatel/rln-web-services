class PartnerOrgComponent < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :component_type_cd, :description, :display, :end_at, :orig_partner_org_component_id, :partner_org_id, :standard_component_id
  
  #coll_requirement
  has_many :container_coll_requirements, :foreign_key => "container_component_id", :class_name => "CollRequirement", :dependent => :restrict
  has_many :container_components, :through => :container_coll_requirements
  has_many :collection_method_coll_requirements, :foreign_key => "collection_method_component_id", :class_name => "CollRequirement", :dependent => :restrict
  has_many :collection_method_components, :through => :collection_method_coll_requirements
  has_many :transport_temp_coll_requirements, :foreign_key => "transport_temp_component_id", :class_name => "CollRequirement", :dependent => :restrict
  has_many :transport_temp_components, :through => :transport_temp_coll_requirements
  has_many :unit_of_measure_coll_requirements, :foreign_key => "unit_of_measure_component_id", :class_name => "CollRequirement", :dependent => :restrict
  has_many :unit_of_measure_components, :through => :unit_of_measure_coll_requirements

  #orderable_speciman
  has_many :orderable_specimen_types, :foreign_key => "specimen_component_id", :dependent => :restrict

  #data_type
  belongs_to :data_type, :foreign_key => "component_type_cd"
  validates :data_type, :presence => true

  #standard_component
  belongs_to :standard_component, :foreign_key => "standard_component_id"
  validates :standard_component, :presence => true

  #organization
  belongs_to :organization, :foreign_key => "partner_org_id"
  validates :organization, :presence => true

  #Self Join
  has_many :history, :class_name => "PartnerOrgComponent", :foreign_key => "orig_partner_org_component_id", :dependent => :restrict
  belongs_to :current, :class_name => "PartnerOrgComponent", :foreign_key => "orig_partner_org_component_id"
  #TODO : Add validates logic into controller.
end
