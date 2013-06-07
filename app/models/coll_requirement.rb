class CollRequirement < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :collection_method_component_id, :container_component_id, :end_at, :minimum_volume, :orderable_specimen_id, :orig_coll_requirements_id, :transport_temp_component_id, :unit_of_measure_component_id
  belongs_to :orderable_speciman, :foreign_key => "orderable_specimen_id"
  belongs_to :partner_org_component, :foreign_key => "container_component_id"
  belongs_to :partner_org_component, :foreign_key => "collection_method_component_id"
  belongs_to :partner_org_component, :foreign_key => "transport_temp_component_id"
  belongs_to :partner_org_component, :foreign_key => "unit_of_measure_component_id"
  has_many :history, :class_name => "CollRequirement", :foreign_key => "orig_coll_requirements_id"
  belongs_to :current, :class_name => "CollRequirement"
end
