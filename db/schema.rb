# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130610194918) do

  create_table "assays", :force => true do |t|
    t.integer  "orig_assay_id"
    t.integer  "partner_org_id"
    t.integer  "alias"
    t.string   "display"
    t.string   "description"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "client_org_orderables", :force => true do |t|
    t.integer  "orig_client_org_orderable_id"
    t.integer  "org_connection_id"
    t.integer  "client_facility_identifier"
    t.integer  "orderable_id"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "coll_requirements", :force => true do |t|
    t.integer  "orig_coll_requirements_id"
    t.integer  "orderable_specimen_id"
    t.integer  "container_component_id"
    t.integer  "collection_method_component_id"
    t.integer  "transport_temp_component_id"
    t.integer  "unit_of_measure_component_id"
    t.integer  "minimum_volume"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "data_types", :force => true do |t|
    t.integer  "code"
    t.string   "display"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orderable_assays", :force => true do |t|
    t.integer  "orig_orderable_assay_id"
    t.integer  "partner_org_id"
    t.integer  "orderable_id"
    t.integer  "assay_id"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "orderable_concepts", :force => true do |t|
    t.integer  "orig_orderable_concept_id"
    t.integer  "orderable_id"
    t.string   "coding_system"
    t.integer  "code"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "orderable_specimens", :force => true do |t|
    t.integer  "orig_orderable_specimen_id"
    t.integer  "orderable_id"
    t.integer  "specimen_component_id"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "orderables", :force => true do |t|
    t.integer  "orig_orderable_id"
    t.integer  "partner_org_id"
    t.integer  "alias"
    t.string   "display"
    t.string   "description"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "org_connections", :force => true do |t|
    t.integer  "orig_org_connection_id"
    t.integer  "partner_org_id"
    t.integer  "client_org_id"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "organizations", :force => true do |t|
    t.integer  "orig_organization_id"
    t.integer  "org_type_cd"
    t.string   "org_name"
    t.string   "org_email"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "partner_org_components", :force => true do |t|
    t.integer  "orig_partner_org_component_id"
    t.integer  "partner_org_id"
    t.integer  "component_type_cd"
    t.string   "display"
    t.string   "description"
    t.integer  "standard_component_id"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "standard_components", :force => true do |t|
    t.integer  "orig_standard_component_id"
    t.integer  "component_type_cd"
    t.string   "display"
    t.string   "description"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "track_assay_changes", :force => true do |t|
    t.integer  "orig_track_assay_change_id"
    t.integer  "client_org_id"
    t.integer  "client_facility_identifier"
    t.integer  "assay_id"
    t.integer  "change_type_cd"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "track_order_changes", :force => true do |t|
    t.integer  "orig_track_order_change_id"
    t.integer  "client_org_id"
    t.integer  "client_facility_identifier"
    t.integer  "orderable_id"
    t.integer  "change_type_cd"
    t.integer  "active_ind"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
