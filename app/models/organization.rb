class Organization < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :end_at, :org_email, :org_name, :org_type_cd, :orig_organization_id

  has_many :track_assay_change
  has_many :assay
  has_many :partner_org_component
  has_many :track_order_change
  has_many :orderable_assay
  has_many :orderable

  has_many :partner_org_connections, :foreign_key => "partner_org_id", :class_name => "OrgConnection"
  has_many :partner_orgs, :through => :partner_org_connections
  has_many :client_org_connections, :foreign_key => "client_org_id", :class_name => "OrgConnection" 
  has_many :client_orgs, :through => :client_org_connections

  belongs_to :data_type, :foreign_key => "org_type_cd"

  has_many :history, :class_name => "Organization", :foreign_key => "orig_organization_id"
  belongs_to :current, :class_name => "Organization"
 end
