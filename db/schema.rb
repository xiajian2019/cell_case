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

ActiveRecord::Schema.define(version: 20190913091947) do

  create_table "components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", comment: "组件" do |t|
    t.string "name", comment: "组件名"
    t.string "code", limit: 50, comment: "组件编码"
    t.string "description", comment: "描述"
    t.text "config"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_components_on_code", unique: true
  end

  create_table "issues", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "title", null: false
    t.string "state", null: false
    t.integer "pull_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", comment: "页面组件关联表" do |t|
    t.integer "page_id", comment: "关联页面"
    t.integer "component_id", comment: "关联组件"
    t.integer "seq", comment: "顺序"
    t.text "config", comment: "针对特定页面的特定配置"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id", "component_id", "seq"], name: "unique_index_for_page_comment", unique: true
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", comment: "页面" do |t|
    t.string "name", comment: "名称"
    t.string "code", limit: 50, comment: "页面编码"
    t.string "description", comment: "描述"
    t.text "config"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_pages_on_code", unique: true
  end

  create_table "pull_requests", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "merged_at"
    t.boolean "draft", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todos", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "description"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
