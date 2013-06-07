class CreatePartnerOrgComponents < ActiveRecord::Migration
  def change
    create_table :partner_org_components do |t|
      t.integer :orig_partner_org_component_id
      t.integer :partner_org_id
      t.integer :component_type_cd
      t.string :display
      t.string :description
      t.integer :standard_component_id
      t.integer :active_ind
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
