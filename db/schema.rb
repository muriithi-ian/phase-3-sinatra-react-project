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

ActiveRecord::Schema.define(version: 2022_11_09_190129) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "description"
    t.integer "category_id"
    t.string "image"
    t.boolean "available"
  end

  create_table "borrows", force: :cascade do |t|
    t.integer "member_id"
    t.integer "book_id"
    t.datetime "borrowed_on"
    t.datetime "returned_on"
    t.datetime "due_date"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "fines", force: :cascade do |t|
    t.float "amount"
    t.integer "borrow_id"
    t.datetime "date_created"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.boolean "is_librarian"
    t.text "password"
    t.text "username"
  end

end
