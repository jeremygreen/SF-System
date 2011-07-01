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

ActiveRecord::Schema.define(:version => 20110627015045) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", :force => true do |t|
    t.string   "referencenumber"
    t.integer  "equipment_type_id"
    t.string   "make"
    t.string   "model"
    t.string   "licencenumber"
    t.string   "capacity"
    t.boolean  "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_types", :force => true do |t|
    t.string   "equipmenttype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loads", :force => true do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movement_types", :force => true do |t|
    t.string   "movementtype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movements", :force => true do |t|
    t.string   "waybill_number"
    t.integer  "customer_id"
    t.integer  "movement_type_id"
    t.integer  "load_id"
    t.date     "movement_date"
    t.time     "movment_time"
    t.integer  "driver_staff_id"
    t.integer  "helper_staff_id"
    t.string   "seal_number"
    t.text     "remarks"
    t.integer  "rate"
    t.integer  "override_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "head_equipment_id"
    t.integer  "trailer_equipment_id"
  end

  create_table "rates", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "load_id"
    t.integer  "movement_type_id"
    t.integer  "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "forename"
    t.string   "surname"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "staffnumber"
  end

  create_table "tasks", :force => true do |t|
    t.string   "task"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trailers", :force => true do |t|
    t.string   "referencenumber"
    t.boolean  "availability"
    t.string   "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
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
    t.string   "role"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "configuration"
    t.string   "licencenumber"
    t.boolean  "availability"
    t.string   "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "referencenumber"
  end

end
