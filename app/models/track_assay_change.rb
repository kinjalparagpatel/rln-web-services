class TrackAssayChange < ActiveRecord::Base
  attr_accessible :active_ind, :assay_id, :begin_at, :change_type_cd, :client_facility_identifier, :client_org_id, :end_at, :orig_track_assay_change_id
  belongs_to :data_type, :foreign_key => "change_type_cd"
  belongs_to :assay, :foreign_key => "assay_id"
  belongs_to :organization, :foreign_key => "client_org_id"
  has_many :history, :class_name => "TrackAssayChange", :foreign_key => "orig_track_assay_change_id"
  belongs_to :current, :class_name => "TrackAssayChange"
end
