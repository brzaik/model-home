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

ActiveRecord::Schema.define(:version => 20120930040156) do

  create_table "blocks", :force => true do |t|
    t.string   "content_name"
    t.integer  "position"
    t.integer  "column_id"
    t.string   "additional_styles"
    t.string   "additional_tags"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "columns", :force => true do |t|
    t.integer  "row_id"
    t.integer  "position"
    t.integer  "span_width"
    t.string   "additional_styles"
    t.string   "additional_tags"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.integer  "upload_id"
    t.string   "caption"
    t.integer  "position"
    t.string   "url_link"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "main_menu_items", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.integer  "page_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "is_homepage"
    t.boolean  "is_project"
    t.integer  "main_menu_item_id"
    t.integer  "upload_id"
    t.integer  "template_id"
    t.string   "slug"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "richtexts", :force => true do |t|
    t.integer  "block_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rows", :force => true do |t|
    t.integer  "page_id"
    t.integer  "position"
    t.string   "additional_styles"
    t.string   "additional_tags"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "template_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "twitter_boards", :force => true do |t|
    t.string   "account_name"
    t.integer  "display_num"
    t.integer  "block_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "uploads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "videoable_id"
    t.string   "videoable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
