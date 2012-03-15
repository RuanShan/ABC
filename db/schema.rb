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

ActiveRecord::Schema.define(:version => 20120308120448) do

  create_table "categories", :force => true do |t|
    t.string   "name",        :limit => 200, :default => "",    :null => false
    t.string   "description", :limit => 400, :default => ""
    t.boolean  "enabled",                    :default => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "shop_categories", :force => true do |t|
    t.string   "name",        :limit => 200, :default => "",    :null => false
    t.string   "description", :limit => 400, :default => ""
    t.boolean  "enabled",                    :default => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "shops", :force => true do |t|
    t.string   "name",       :limit => 80,  :default => "", :null => false
    t.string   "url"
    t.string   "owner",      :limit => 40,  :default => "", :null => false
    t.string   "owner_id"
    t.integer  "province",   :limit => 2,   :default => 0,  :null => false
    t.integer  "city",       :limit => 3,   :default => 0,  :null => false
    t.integer  "district",                  :default => 0,  :null => false
    t.string   "address",    :limit => 400, :default => "", :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login",                  :limit => 40,  :default => "", :null => false
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
