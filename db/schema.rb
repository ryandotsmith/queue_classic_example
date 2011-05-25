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

ActiveRecord::Schema.define(:version => 20110519201429) do

  create_table "email_jobs", :force => true do |t|
    t.text     "details"
    t.datetime "locked_at"
  end

  add_index "email_jobs", ["id"], :name => "index_email_jobs_on_id"

  create_table "image_jobs", :force => true do |t|
    t.text     "details"
    t.datetime "locked_at"
  end

  add_index "image_jobs", ["id"], :name => "index_image_jobs_on_id"

  create_table "queue_classic_jobs", :force => true do |t|
    t.text     "details"
    t.datetime "locked_at"
  end

  add_index "queue_classic_jobs", ["id"], :name => "index_queue_classic_jobs_on_id"

  create_table "users", :force => true do |t|
    t.datetime "welcome_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
