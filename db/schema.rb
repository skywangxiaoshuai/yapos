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

ActiveRecord::Schema.define(version: 20170713063921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gates", force: :cascade do |t|
    t.string   "partner_id"
    t.string   "notify_pid"
    t.date     "notify_time"
    t.string   "shop_id"
    t.string   "status"
    t.string   "sign_type"
    t.string   "sign"
    t.string   "display_status"
    t.string   "notify_type"
    t.string   "update_time"
    t.string   "create_time"
    t.string   "action"
    t.string   "notify_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "koubei_gates", force: :cascade do |t|
    t.string   "partner_id"
    t.string   "notify_pid"
    t.date     "notify_time"
    t.string   "shop_id"
    t.string   "status"
    t.string   "sign_type"
    t.string   "sign"
    t.string   "display_status"
    t.string   "notify_type"
    t.string   "update_time"
    t.string   "create_time"
    t.string   "action"
    t.string   "notify_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "koubei_notifications", force: :cascade do |t|
    t.string   "buyer_id"
    t.string   "merchant_uid"
    t.string   "alipay_shop_id"
    t.string   "total_amount"
    t.string   "receipt_amount"
    t.string   "buyer_pay_amount"
    t.string   "gmt_payment"
    t.string   "trade_no"
    t.string   "app_id"
    t.string   "out_trade_no"
    t.string   "voucher_id_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pay_results", force: :cascade do |t|
    t.string   "buyer_id"
    t.string   "merchant_uid"
    t.string   "alipay_shop_id"
    t.string   "total_amount"
    t.string   "receipt_amount"
    t.string   "buyer_pay_amount"
    t.string   "gmt_payment"
    t.string   "trade_no"
    t.string   "app_id"
    t.string   "out_trade_no"
    t.string   "voucher_id_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
