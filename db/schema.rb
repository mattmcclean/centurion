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

ActiveRecord::Schema.define(:version => 20120310103501) do

  create_table "alerts", :force => true do |t|
    t.integer  "alertstatus_id"
    t.integer  "checkresult_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "alerts", ["alertstatus_id"], :name => "index_alerts_on_alertstatus_id"
  add_index "alerts", ["checkresult_id"], :name => "index_alerts_on_checkresult_id"

  create_table "alertstatuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "checkresults", :force => true do |t|
    t.string   "service"
    t.integer  "returncode_id"
    t.integer  "node_id"
    t.integer  "check_id"
    t.text     "info"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.datetime "checked_at"
  end

  add_index "checkresults", ["check_id"], :name => "index_checkresults_on_check_id"
  add_index "checkresults", ["node_id"], :name => "index_checkresults_on_node_id"
  add_index "checkresults", ["returncode_id"], :name => "index_checkresults_on_returncode_id"

  create_table "checks", :force => true do |t|
    t.string   "name"
    t.string   "cmd"
    t.string   "target"
    t.integer  "interval"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "checks_subscriptions", :id => false, :force => true do |t|
    t.integer "check_id",        :null => false
    t.integer "subscription_id", :null => false
  end

  add_index "checks_subscriptions", ["check_id", "subscription_id"], :name => "index_checks_subscriptions_on_check_id_and_subscription_id", :unique => true

  create_table "nodes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "returncodes", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
