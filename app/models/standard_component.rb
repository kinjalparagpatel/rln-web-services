class StandardComponent < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :component_type_cd, :description, :display, :end_at, :orig_standard_component_id
  has_many :partner_org_component
  belongs_to :data_type, :foreign_key => "component_type_cd"
  has_many :history, :class_name => "StandardComponent", :foreign_key => "orig_standard_component_id"
  belongs_to :current, :class_name => "StandardComponent"
end
