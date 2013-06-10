class OrderableConcept < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :code, :coding_system, :end_at, :orderable_id, :orig_orderable_concept_id
  
  #orderable
  belongs_to :orderable, :foreign_key => "orderable_id"
  validates :orderable, :presence => true
  
  #self Join
  has_many :history, :class_name => "OrderableConcept", :foreign_key => "orig_orderable_concept_id", :dependent => :restrict
  belongs_to :current, :class_name => "OrderableConcept", :foreign_key => "orig_orderable_concept_id"
  #TODO : Add validates logic in controller
end
