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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150429091910) do

# Could not dump table "comments" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "conversations", force: true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id"
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id"

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "room"
    t.integer  "max_players"
    t.integer  "kind"
    t.string   "instance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "games", ["instance"], name: "index_games_on_instance"
  add_index "games", ["kind"], name: "index_games_on_kind"
  add_index "games", ["room"], name: "index_games_on_room"

  create_table "messages", force: true do |t|
    t.string  "content"
    t.integer "conversation_id"
    t.integer "user_id"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "recipes", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "mealtime"
    t.string   "style"
    t.text     "ingredient"
    t.text     "desc"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "recipes", ["user_id", "created_at"], name: "index_recipes_on_user_id_and_created_at"
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "shouts", force: true do |t|
    t.string "content"
  end

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
