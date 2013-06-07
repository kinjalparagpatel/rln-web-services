class DataType < ActiveRecord::Base
  attr_accessible :code, :description, :display
  has_many :track_assay_change
  has_many :partner_org_component
  has_many :organization, :foreign_key => "org_type_cd"
  has_many :standard_component
  has_many :track_order_change
end
