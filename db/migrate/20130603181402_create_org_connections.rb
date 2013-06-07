class CreateOrgConnections < ActiveRecord::Migration
  def change
    create_table :org_connections do |t|
      t.integer :orig_org_connection_id
      t.integer :partner_org_id
      t.integer :client_org_id
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
