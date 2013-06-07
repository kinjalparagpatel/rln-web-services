class ChangeOrderableSpecimenMigration < ActiveRecord::Migration
  def change 
  	rename_table :orderable_specimen, :orderable_specimens
  end
end
