class CreateTrackOrderChanges < ActiveRecord::Migration
  def change
    create_table :track_order_changes do |t|
      t.integer :orig_track_order_change_id
      t.integer :client_org_id
      t.integer :client_facility_identifier
      t.integer :orderable_id
      t.integer :change_type_cd
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
