class OrderableAssay < ActiveRecord::Base
  attr_accessible :active_ind, :assay_id, :begin_at, :end_at, :orderable_id, :orig_orderable_assay_id, :partner_org_id
  
  #assay
  belongs_to :assay, :foreign_key => "assay_id"
  validates :assay, :presence => true

  #organization
  belongs_to :organization, :foreign_key =>"partner_org_id"
  validates :organization, :presence => true

  #orderable
  belongs_to :orderable, :foreign_key => "orderable_id"
  validates :orderable, :presence => true
  
  #self Join
  has_many :history ,:class_name => "OrderableAssay", :foreign_key => "orig_orderable_assay_id", :dependent => :restrict
  belongs_to :current, :class_name => "OrderableAssay", :foreign_key => "orig_orderable_assay_id"
  #TODO : Add validates login into controller.

end
