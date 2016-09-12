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

ActiveRecord::Schema.define(version: 20160912202352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "overthrows", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "prompt_id"
    t.index ["prompt_id"], name: "index_overthrows_on_prompt_id", using: :btree
    t.index ["subject_id"], name: "index_overthrows_on_subject_id", using: :btree
  end

  create_table "prompts", force: :cascade do |t|
    t.string   "content"
    t.integer  "king_id"
    t.boolean  "current",            default: false
    t.boolean  "pending",            default: true
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "response_type",      default: "text"
    t.index ["king_id"], name: "index_prompts_on_king_id", using: :btree
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "prompt_id"
    t.string   "content"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["prompt_id"], name: "index_responses_on_prompt_id", using: :btree
    t.index ["subject_id"], name: "index_responses_on_subject_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "profile_picture_url"
    t.string   "facebook_user_id"
    t.integer  "points",              default: 0
    t.boolean  "king",                default: false
    t.boolean  "admin",               default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "response_id"
    t.integer "subject_id"
    t.index ["response_id"], name: "index_votes_on_response_id", using: :btree
    t.index ["subject_id"], name: "index_votes_on_subject_id", using: :btree
  end

end
