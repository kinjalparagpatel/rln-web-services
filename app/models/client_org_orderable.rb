class ClientOrgOrderable < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :client_facility_identifier, :end_at, :orderable_id, :org_connection_id, :orig_client_org_orderable_id
  belongs_to :org_connection, :foreign_key => "org_connection_id"
  belongs_to :orderable, :foreign_key => "orderable_id"
  has_many :history, :class_name => "ClientOrgOrderable", :foreign_key => "orig_client_org_orderable_id"
  belongs_to :current, :class_name => "ClientOrgOrderable"
end
