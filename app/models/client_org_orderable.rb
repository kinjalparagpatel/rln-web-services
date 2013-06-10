class ClientOrgOrderable < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :client_facility_identifier, :end_at, :orderable_id, :org_connection_id, :orig_client_org_orderable_id
  
  #Org_connection
  belongs_to :org_connection, :foreign_key => "org_connection_id"
  validates :org_connection, :presence => true
  
  #Orderable
  belongs_to :orderable, :foreign_key => "orderable_id"
  validates :orderable, :presence => true
  
  #self Join
  has_many :history, :class_name => "ClientOrgOrderable", :foreign_key => "orig_client_org_orderable_id", :dependent => :restrict
  belongs_to :current, :class_name => "ClientOrgOrderable", :foreign_key => "orig_client_org_orderable_id"
  #validates :current, :presence => true (TODO : Add Logic in Controller)
end
