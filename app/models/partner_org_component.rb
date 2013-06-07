class PartnerOrgComponent < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :component_type_cd, :description, :display, :end_at, :orig_partner_org_component_id, :partner_org_id, :standard_component_id
  has_many :coll_requirement
  has_many :orderable_speciman
  belongs_to :data_type, :foreign_key => "component_type_cd"
  belongs_to :standard_component, :foreign_key => "standard_component_id"
  belongs_to :organization, :foreign_key => "partner_org_id"
  has_many :history, :class_name => "PartnerOrgComponent", :foreign_key => "orig_partner_org_component_id"
  belongs_to :current, :class_name => "PartnerOrgComponent"
end
