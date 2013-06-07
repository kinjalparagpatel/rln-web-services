class CreateStandardComponents < ActiveRecord::Migration
  def change
    create_table :standard_components do |t|
      t.integer :orig_standard_component_id
      t.integer :component_type_cd
      t.string :display
      t.string :description
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
