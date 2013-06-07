class Assay < ActiveRecord::Base
  attr_accessible :active_ind, :alias, :begin_at, :description, :display, :end_at, :orig_assay_id, :partner_org_id
  has_many :track_assay_change
  has_many :orderable_assay
  belongs_to :organization, :foreign_key => "partner_org_id"
  has_many :history, :class_name => "Assay", :foreign_key => "orig_assay_id"
  belongs_to :current, :class_name => "Assay"

end
