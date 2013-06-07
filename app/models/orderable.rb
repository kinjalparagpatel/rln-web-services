class Orderable < ActiveRecord::Base
  attr_accessible :active_ind, :alias, :begin_at, :description, :display, :end_at, :orig_orderable_id, :partner_org_id
  has_many :orderable_speciman
  has_many :track_order_change
  has_many :client_org_orderable
  has_many :orderable_assay
  has_many :orderable_concept
  belongs_to :organization, :foreign_key => "partner_org_id"
  has_many :history, :class_name => "Orderable", :foreign_key => "orig_orderable_id"
  belongs_to :current, :class_name => "Orderable"
end
