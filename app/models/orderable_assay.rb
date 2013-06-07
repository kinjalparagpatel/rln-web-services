class OrderableAssay < ActiveRecord::Base
  attr_accessible :active_ind, :assay_id, :begin_at, :end_at, :orderable_id, :orig_orderable_assay_id, :partner_org_id
  belongs_to :assay, :foreign_key => "assay_id"
  belongs_to :organization :foreign_key =>"partner_org_id"
  belongs_to :orderable :foreign_key => "orderable_id"
  has_many :history ,:class_name => "OrderableAssay", :foreign_key => "orig_orderable_assay_id"
  belongs_to :current, : class_name => "OrderableAssay"
end
