class Changetablename < ActiveRecord::Migration
  def up
  	 def change 
  	rename_table :orderable_specimens, :orderable_specimen
  end
  end

  def down
  end
end
