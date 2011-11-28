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

ActiveRecord::Schema.define(:version => 20111128064501) do

  create_table "families", :force => true do |t|
    t.string   "name_jp"
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fish", :force => true do |t|
    t.string   "family_jp"
    t.string   "name_jp"
    t.string   "nickname_jp"
    t.string   "family_en"
    t.string   "name_en"
    t.string   "name_la"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "family_id"
  end

  create_table "photos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file"
    t.integer  "fish_id"
  end

end
