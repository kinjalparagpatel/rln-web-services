class Organization < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :end_at, :org_email, :org_name, :org_type_cd, :orig_organization_id

  #track_assay_change
  has_many :track_assay_changes, :foreign_key => "client_org_id", :dependent => :restrict

  #assay
  has_many :partner_org_assays, :foreign_key => "partner_org_id", :class_name => "Assay", :dependent => :restrict

  #partner_org_component
  has_many :partner_org_components, :foreign_key => "partner_org_id", :dependent => :restrict

  #track_order_change
  has_many :track_order_changes, :foreign_key => "client_org_id", :dependent => :restrict

  #orderable_assay
  has_many :orderable_assays, :foreign_key =>"partner_org_id", :dependent => :restrict

  #Orderable
  has_many :partner_org_orderables, :foreign_key => "partner_org_id", :class_name => "Orderable", :dependent => :restrict

  #org_connection
  has_many :partner_org_connections, :foreign_key => "partner_org_id", :class_name => "OrgConnection", :dependent => :restrict
  has_many :partner_orgs, :through => :partner_org_connections
  has_many :client_org_connections, :foreign_key => "client_org_id", :class_name => "OrgConnection", :dependent => :restrict 
  has_many :client_orgs, :through => :client_org_connections
  
  #data_type
  belongs_to :data_type, :foreign_key => "org_type_cd"
  validates :data_type, :presence => true

  #self join
  has_many :history, :class_name => "Organization", :foreign_key => "orig_organization_id", :dependent => :restrict
  belongs_to :current, :class_name => "Organization", :foreign_key => "orig_organization_id"
  #validates :current, :presence => true (TODO : Add Logic in Controller)
  
 end
