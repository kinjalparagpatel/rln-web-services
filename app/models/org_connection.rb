class OrgConnection < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :client_org_id, :end_at, :orig_org_connection_id, :partner_org_id

  belongs_to :partner_org, :foreign_key => "partner_org_id", :class_name => "Organization"
  belongs_to :client_org, :foreign_key => "client_org_id", :class_name => "Organization"

  has_many :history, :class_name => "OrgConnection", :foreign_key => "orig_org_connection_id"
  belongs_to :current, :class_name => "OrgConnection"
  
  has_many :client_org_orderable
end
