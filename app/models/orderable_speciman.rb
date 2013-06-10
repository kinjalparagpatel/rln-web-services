class OrderableSpeciman < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :end_at, :orderable_id, :orig_orderable_specimen_id, :specimen_component_id
  
  #coll_requirement
  has_many :coll_requirements, :foreign_key => "orderable_specimen_id", :dependent => :restrict
  
  #partner_org_component
  belongs_to :partner_org_component, :foreign_key => "specimen_component_id"
  validates :partner_org_component, :presence => true

  #orderable
  belongs_to :orderable, :foreign_key => "orderable_id"
  validates :orderable, :presence => true
  
  #self Join
  has_many :history, :class_name => "OrderableSpeciman", :foreign_key => "orig_orderable_specimen_id", :dependent => :restrict
  belongs_to :current, :class_name => "OrderableSpeciman", :foreign_key => "orig_orderable_specimen_id"
  #TODO : Add Validates logic into controller.

end
