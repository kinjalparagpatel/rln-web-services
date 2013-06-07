class CreateClientOrgOrderables < ActiveRecord::Migration
  def change
    create_table :client_org_orderables do |t|
      t.integer :orig_client_org_orderable_id
      t.integer :org_connection_id
      t.integer :client_facility_identifier
      t.integer :orderable_id
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
