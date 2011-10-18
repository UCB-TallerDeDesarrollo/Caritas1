# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111018020550) do

  create_table "campaings", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.date     "date_ini"
    t.date     "date_end"
    t.string   "responsible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "volunteer_id"
  end

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "notice_type"
    t.date     "last_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pastors", :force => true do |t|
    t.string   "name"
    t.string   "primary_last_name"
    t.string   "second_last_name"
    t.integer  "phone_number"
    t.integer  "cellphone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_works", :force => true do |t|
    t.string   "name"
    t.string   "responsible"
    t.string   "location"
    t.integer  "phone"
    t.integer  "movil"
    t.string   "email"
    t.string   "transport"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vicarious", :force => true do |t|
    t.string   "nameVicariou"
    t.string   "ubication"
    t.string   "transport"
    t.string   "telephone"
    t.string   "vicarName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "second_last_name"
    t.string   "profession"
    t.integer  "phone_number"
    t.integer  "movil"
    t.date     "date_of_birth"
    t.string   "genre"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.string   "email"
    t.string   "state"
  end

end
