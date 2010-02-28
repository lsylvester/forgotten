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

ActiveRecord::Schema.define(:version => 20100228052308) do

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "payroll_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "people", ["slug"], :name => "index_people_on_slug"

  create_table "reminders", :force => true do |t|
    t.integer  "person_id"
    t.text     "message"
    t.datetime "send_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reminders", ["person_id"], :name => "index_reminders_on_person_id"
  add_index "reminders", ["send_at"], :name => "index_reminders_on_send_at"

end
