class CreateOrderableConcepts < ActiveRecord::Migration
  def change
    create_table :orderable_concepts do |t|
      t.integer :orig_orderable_concept_id
      t.integer :orderable_id
      t.string :coding_system
      t.integer :code
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
