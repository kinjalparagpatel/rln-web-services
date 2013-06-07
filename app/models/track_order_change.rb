class TrackOrderChange < ActiveRecord::Base
  attr_accessible :active_ind, :begin_at, :change_type_cd, :client_facility_identifier, :client_org_id, :end_at, :orderable_id, :orig_track_order_change_id
  belongs_to :data_type, :foreign_key => "change_type_cd"
  belongs_to :organization, :foreign_key => "client_org_id"
  belongs_to :orderable, :foreign_key => "orderable_id"
end
