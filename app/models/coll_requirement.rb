class CollRequirement < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :collection_method_component_id, :container_component_id, :end_at, :minimum_volume, :orderable_specimen_id, :orig_coll_requirements_id, :transport_temp_component_id, :unit_of_measure_component_id
  
  #orderable_speciman
  belongs_to :orderable_speciman, :foreign_key => "orderable_specimen_id"
  validates :orderable, :presence => true

  #partner_org_component
  belongs_to :container_component, :foreign_key => "container_component_id", :class_name => "PartnerOrgComponent"
  validates :container_component, :presence => true
  belongs_to :collection_method_component, :foreign_key => "collection_method_component_id", :class_name => "PartnerOrgComponent"
  validates :collection_method_component, :presence => true
  belongs_to :transport_temp_component, :foreign_key => "transport_temp_component_id", :class_name => "PartnerOrgComponent"
  validates :transport_temp_component, :presence => true
  belongs_to :unit_of_measure_component, :foreign_key => "unit_of_measure_component_id", :class_name => "PartnerOrgComponent"
  validates :unit_of_measure_component, :presence => true

  #self Join
  has_many :history, :class_name => "CollRequirement", :foreign_key => "orig_coll_requirements_id", :dependent => :restrict
  belongs_to :current, :class_name => "CollRequirement", :foreign_key => "orig_coll_requirements_id"
  #TODO : Add Validates logic into controller.

end
