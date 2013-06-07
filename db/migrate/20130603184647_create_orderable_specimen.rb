class CreateOrderableSpecimen < ActiveRecord::Migration
  def change
    create_table :orderable_specimen do |t|
      t.integer :orig_orderable_specimen_id
      t.integer :orderable_id
      t.integer :specimen_component_id
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
