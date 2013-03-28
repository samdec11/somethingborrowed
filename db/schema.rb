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

ActiveRecord::Schema.define(:version => 20130328232837) do

  create_table "borrows", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "borrower_id"
    t.date     "borrow_date"
    t.date     "return_date"
    t.boolean  "active",      :default => true
    t.integer  "item_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_items", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "item_id"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.text     "instructions"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string  "title"
    t.integer "rating"
    t.date    "post_date"
    t.text    "text"
    t.integer "reviewable_id"
    t.string  "reviewable_type"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image",           :default => "http://designyoutrust.com/wp-content/uploads7/designfetishnophotofacebook1.jpg"
    t.string   "password_digest"
    t.datetime "created_at",                                                                                                    :null => false
    t.datetime "updated_at",                                                                                                    :null => false
  end

end
