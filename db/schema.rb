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


ActiveRecord::Schema.define(version: 20171023212024) do

  create_table "computers", force: :cascade do |t|
    t.date "commission_date"
    t.date "decommission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "activity_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "latest_activity_date"
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.float "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_computers", force: :cascade do |t|
    t.datetime "assignment_date"
    t.datetime "return_date"
    t.integer "employee_id"
    t.integer "computer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_employee_computers_on_computer_id"
    t.index ["employee_id"], name: "index_employee_computers_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "supervisor_status"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "employees_training_programs", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "training_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employees_training_programs_on_employee_id"
    t.index ["training_program_id"], name: "index_employees_training_programs_on_training_program_id"
  end

  create_table "issuing_banks", force: :cascade do |t|
    t.string "issuer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float "amount_paid"
    t.integer "customer_id"
    t.integer "payment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["payment_type_id"], name: "index_orders_on_payment_type_id"
  end

  create_table "orders_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_products_on_order_id"
    t.index ["product_id"], name: "index_orders_products_on_product_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.integer "account_number"
    t.date "expiration_date"
    t.integer "customer_id"
    t.integer "issuing_bank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_payment_types_on_customer_id"
    t.index ["issuing_bank_id"], name: "index_payment_types_on_issuing_bank_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "price"
    t.text "description"
    t.integer "product_type_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.index ["customer_id"], name: "index_products_on_customer_id"
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  create_table "training_programs", force: :cascade do |t|
    t.string "program_name"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.integer "attendee_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
