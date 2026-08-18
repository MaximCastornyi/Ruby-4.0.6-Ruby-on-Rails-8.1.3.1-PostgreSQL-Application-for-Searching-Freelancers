# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_08_18_082002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "administrators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.uuid "order_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["order_id"], name: "index_comments_on_order_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "receiver_id"
    t.bigint "sender_id"
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "gigs", force: :cascade do |t|
    t.boolean "active", default: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.boolean "has_single_pricing", default: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.string "video"
    t.index ["category_id"], name: "index_gigs_on_category_id"
    t.index ["user_id"], name: "index_gigs_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "conversation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.integer "days"
    t.text "note"
    t.bigint "request_id", null: false
    t.integer "status", default: 0
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["request_id"], name: "index_offers_on_request_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "orders", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.float "amount"
    t.bigint "buyer_id"
    t.string "buyer_name"
    t.datetime "created_at", null: false
    t.date "due_date"
    t.bigint "gig_id"
    t.bigint "request_id"
    t.bigint "seller_id"
    t.string "seller_name"
    t.integer "status", default: 0
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["gig_id"], name: "index_orders_on_gig_id"
    t.index ["request_id"], name: "index_orders_on_request_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  create_table "pricings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "delivery_time"
    t.text "description"
    t.bigint "gig_id", null: false
    t.integer "price"
    t.integer "pricing_type"
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["gig_id"], name: "index_pricings_on_gig_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "budget"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.integer "delivery"
    t.text "description"
    t.string "title"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["category_id"], name: "index_requests_on_category_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "buyer_id"
    t.datetime "created_at", null: false
    t.bigint "gig_id"
    t.uuid "order_id", null: false
    t.text "review"
    t.bigint "seller_id"
    t.integer "stars", default: 1
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_reviews_on_buyer_id"
    t.index ["gig_id"], name: "index_reviews_on_gig_id"
    t.index ["order_id"], name: "index_reviews_on_order_id"
    t.index ["seller_id"], name: "index_reviews_on_seller_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "expired_at"
    t.string "plan_id"
    t.integer "status", default: 0
    t.string "sub_id"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.float "amount"
    t.bigint "buyer_id"
    t.datetime "created_at", null: false
    t.bigint "gig_id"
    t.bigint "request_id"
    t.bigint "seller_id"
    t.integer "source_type"
    t.integer "status"
    t.integer "transaction_type"
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_transactions_on_buyer_id"
    t.index ["gig_id"], name: "index_transactions_on_gig_id"
    t.index ["request_id"], name: "index_transactions_on_request_id"
    t.index ["seller_id"], name: "index_transactions_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "about"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "from"
    t.string "full_name"
    t.string "image"
    t.string "language"
    t.string "paypal"
    t.string "phone"
    t.string "provider"
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.boolean "status"
    t.string "stripe_id"
    t.string "stripe_last_4"
    t.string "uid"
    t.datetime "updated_at", null: false
    t.float "wallet", default: 0.0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "orders"
  add_foreign_key "comments", "users"
  add_foreign_key "conversations", "users", column: "receiver_id"
  add_foreign_key "conversations", "users", column: "sender_id"
  add_foreign_key "gigs", "categories"
  add_foreign_key "gigs", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "offers", "requests"
  add_foreign_key "offers", "users"
  add_foreign_key "orders", "gigs"
  add_foreign_key "orders", "requests"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "orders", "users", column: "seller_id"
  add_foreign_key "pricings", "gigs"
  add_foreign_key "requests", "categories"
  add_foreign_key "requests", "users"
  add_foreign_key "reviews", "gigs"
  add_foreign_key "reviews", "orders"
  add_foreign_key "reviews", "users", column: "buyer_id"
  add_foreign_key "reviews", "users", column: "seller_id"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "transactions", "gigs"
  add_foreign_key "transactions", "requests"
  add_foreign_key "transactions", "users", column: "buyer_id"
  add_foreign_key "transactions", "users", column: "seller_id"
end
