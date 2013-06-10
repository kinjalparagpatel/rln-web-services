class Orderable < ActiveRecord::Base
  attr_accessible :active_ind, :alias, :begin_at, :description, :display, :end_at, :orig_orderable_id, :partner_org_id
  
  #orderable_speciman
  has_many :orderable_specimans, :foreign_key => "orderable_id", :dependent => :restrict
  #has_many :specimen_components, :through => :orderable_specimans, :class_name => "PartnerOrgComponent"
  
  #track_order_change
  has_many :track_order_changes, :foreign_key => "orderable_id", :dependent => :restrict
 
  #orderable_assay
  has_many :orderable_assays, :foreign_key => "orderable_id", :dependent => :restrict
  has_many :assays, :through => :orderable_assays, :class_name => "Assay"

  #orderable_concept
  has_many :orderable_concepts, :foreign_key => "orderable_id", :dependent => :restrict
  
  #client_org_orderable
  has_many :client_org_orderables, :foreign_key => "orderable_id", :dependent => :restrict

  #Organization
  belongs_to :organization, :foreign_key => "partner_org_id"
  validates :organization, :presence => true

  #self Join
  has_many :history, :class_name => "Orderable", :foreign_key => "orig_orderable_id", :dependent => :restrict
  belongs_to :current, :class_name => "Orderable", :foreign_key => "orig_orderable_id"
  #TODO : Add validates logic in controller
end
