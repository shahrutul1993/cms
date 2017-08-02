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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170801101716) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type"

  create_table "field_definitions", force: :cascade do |t|
    t.integer  "type_id"
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "field_definitions", ["type_id"], name: "index_field_definitions_on_type_id"

  create_table "fields", force: :cascade do |t|
    t.integer  "page_id"
    t.integer  "field_definition_id"
    t.string   "value"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "fields", ["field_definition_id"], name: "index_fields_on_field_definition_id"
  add_index "fields", ["page_id"], name: "index_fields_on_page_id"

  create_table "menu_items", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "m"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_items", ["menu_id"], name: "index_menu_items_on_menu_id"

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "type_id"
  end

  add_index "pages", ["category_id"], name: "index_pages_on_category_id"
  add_index "pages", ["type_id"], name: "index_pages_on_type_id"

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
