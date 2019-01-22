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

ActiveRecord::Schema.define(version: 20190122075546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_translations", force: :cascade do |t|
    t.integer "blog_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.text "content"
    t.string "meta_keys"
    t.text "meta_description"
    t.index ["blog_id"], name: "index_blog_translations_on_blog_id"
    t.index ["locale"], name: "index_blog_translations_on_locale"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "components", force: :cascade do |t|
    t.string "name"
    t.integer "category", default: 0
    t.float "price_per_kw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consult_requests", force: :cascade do |t|
    t.string "user_name"
    t.string "phone"
    t.boolean "is_new", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "content_block_translations", force: :cascade do |t|
    t.integer "content_block_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "small_title"
    t.text "content"
    t.index ["content_block_id"], name: "index_content_block_translations_on_content_block_id"
    t.index ["locale"], name: "index_content_block_translations_on_locale"
  end

  create_table "content_blocks", force: :cascade do |t|
    t.string "key"
    t.boolean "visible", default: true
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_content_blocks_on_key"
  end

  create_table "fastenings", force: :cascade do |t|
    t.string "name"
    t.integer "category", default: 0
    t.float "price_per_kw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inverters", force: :cascade do |t|
    t.string "name"
    t.integer "category", default: 0
    t.float "price"
    t.integer "range_min"
    t.integer "range_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "montages", force: :cascade do |t|
    t.string "name"
    t.integer "category", default: 0
    t.float "price_per_kw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "panels", force: :cascade do |t|
    t.string "name"
    t.integer "category", default: 0
    t.float "price_per_kw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_image_translations", force: :cascade do |t|
    t.integer "project_image_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.index ["locale"], name: "index_project_image_translations_on_locale"
    t.index ["project_image_id"], name: "index_project_image_translations_on_project_image_id"
  end

  create_table "project_images", force: :cascade do |t|
    t.string "image"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id"
  end

  create_table "project_translations", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.text "content"
    t.string "meta_keys"
    t.text "meta_description"
    t.index ["locale"], name: "index_project_translations_on_locale"
    t.index ["project_id"], name: "index_project_translations_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position", default: 1
    t.string "page_cover"
  end

  create_table "service_translations", force: :cascade do |t|
    t.integer "service_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.index ["locale"], name: "index_service_translations_on_locale"
    t.index ["service_id"], name: "index_service_translations_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_setting_translations", force: :cascade do |t|
    t.integer "site_setting_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "value"
    t.string "label"
    t.index ["locale"], name: "index_site_setting_translations_on_locale"
    t.index ["site_setting_id"], name: "index_site_setting_translations_on_site_setting_id"
  end

  create_table "site_settings", force: :cascade do |t|
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_site_settings_on_key"
  end

  create_table "slide_translations", force: :cascade do |t|
    t.integer "slide_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "small_title"
    t.text "content"
    t.index ["locale"], name: "index_slide_translations_on_locale"
    t.index ["slide_id"], name: "index_slide_translations_on_slide_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "text_color", default: "#fff"
    t.integer "position", default: 1
  end

  create_table "static_page_translations", force: :cascade do |t|
    t.integer "static_page_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.string "meta_keys"
    t.string "label"
    t.text "meta_description"
    t.index ["locale"], name: "index_static_page_translations_on_locale"
    t.index ["static_page_id"], name: "index_static_page_translations_on_static_page_id"
  end

  create_table "static_pages", force: :cascade do |t|
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_member_translations", force: :cascade do |t|
    t.integer "team_member_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "position"
    t.index ["locale"], name: "index_team_member_translations_on_locale"
    t.index ["team_member_id"], name: "index_team_member_translations_on_team_member_id"
  end

  create_table "team_members", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonial_translations", force: :cascade do |t|
    t.integer "testimonial_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
    t.string "position"
    t.text "content"
    t.index ["locale"], name: "index_testimonial_translations_on_locale"
    t.index ["testimonial_id"], name: "index_testimonial_translations_on_testimonial_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
