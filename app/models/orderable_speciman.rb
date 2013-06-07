class OrderableSpeciman < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :end_at, :orderable_id, :orig_orderable_specimen_id, :specimen_component_id
  has_many :coll_requirement
  belongs_to :partner_org_component, :foreign_key => "specimen_component_id"
  belongs_to :orderable, :foreign_key => "orderable_id"
  has_many :history, :class_name => "OrderableSpeciman", :foreign_key => "orig_orderable_specimen_id"
  belongs_to :current, :class_name => "OrderableSpeciman"
end
