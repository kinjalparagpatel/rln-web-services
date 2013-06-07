class CreateCollRequirements < ActiveRecord::Migration
  def change
    create_table :coll_requirements do |t|
      t.integer :orig_coll_requirements_id
      t.integer :orderable_specimen_id
      t.integer :container_component_id
      t.integer :collection_method_component_id
      t.integer :transport_temp_component_id
      t.integer :unit_of_measure_component_id
      t.integer :minimum_volume
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
