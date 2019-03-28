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

ActiveRecord::Schema.define(version: 2019_03_28_125533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipamentos", force: :cascade do |t|
    t.bigint "equipamento_id"
    t.boolean "tombado"
    t.string "tombamento"
    t.string "modelo"
    t.string "marca"
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipamento_id"], name: "index_equipamentos_on_equipamento_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.string "codigo"
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.bigint "produto_id"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_produtos_on_produto_id"
  end

  add_foreign_key "equipamentos", "insumos", column: "equipamento_id"
  add_foreign_key "produtos", "insumos", column: "produto_id"
end
