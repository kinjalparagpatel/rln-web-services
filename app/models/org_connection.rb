class OrgConnection < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :client_org_id, :end_at, :orig_org_connection_id, :partner_org_id

  #Organization
  belongs_to :partner_org, :foreign_key => "partner_org_id", :class_name => "Organization"
  validates :partner_org, :presence => true
  belongs_to :client_org, :foreign_key => "client_org_id", :class_name => "Organization"
  validates :client_org, :presence => true

  #self join
  has_many :history, :class_name => "OrgConnection", :foreign_key => "orig_org_connection_id", :dependent => :restrict
  belongs_to :current, :class_name => "OrgConnection", :foreign_key => "orig_org_connection_id"
  #validates :current, :presence => true  (TODO : Add Logic in Controller)
  
  #client_org_orderable
  has_many :client_org_orderables, :foreign_key => "org_connection_id", :dependent => :restrict
  
end
