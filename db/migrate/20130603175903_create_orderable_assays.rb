class CreateOrderableAssays < ActiveRecord::Migration
  def change
    create_table :orderable_assays do |t|
      t.integer :orig_orderable_assay_id
      t.integer :partner_org_id
      t.integer :orderable_id
      t.integer :assay_id
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
