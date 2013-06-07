class CreateAssays < ActiveRecord::Migration
  def change
    create_table :assays do |t|
      t.integer :orig_assay_id
      t.integer :partner_org_id
      t.integer :alias
      t.string :display
      t.string :description
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
