class Assay < ActiveRecord::Base
  attr_accessible :active_ind, :alias, :begin_at, :description, :display, :end_at, :orig_assay_id, :partner_org_id
  
  #track_assay_change
  has_many :track_assay_changes, :foreign_key => "assay_id", :dependent => :restrict

  #orderable_assay
  has_many :orderable_assays, :foreign_key => "assay_id", :dependent => :restrict
  has_many :orderables, :through => :orderable_assays, :class_name => "Orderable"

  #organization
  belongs_to :organization, :foreign_key => "partner_org_id"
  validates :organization, :presence => true
  
  #self Join
  has_many :history, :class_name => "Assay", :foreign_key => "orig_assay_id", :dependent => :restrict
  belongs_to :current, :class_name => "Assay"
  #TODO : Add validates logic into controller.
end
