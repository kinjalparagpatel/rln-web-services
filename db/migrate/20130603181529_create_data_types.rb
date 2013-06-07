class CreateDataTypes < ActiveRecord::Migration
  def change
    create_table :data_types do |t|
      t.integer :code
      t.string :display
      t.string :description

      t.timestamps
    end
  end
end
