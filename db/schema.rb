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

ActiveRecord::Schema.define(version: 20_190_909_023_926) do
  create_table 'censors', force: :cascade do |t|
    t.integer 'censor_pixel_height', null: false
    t.integer 'censor_pixel_width', null: false
    t.integer 'x_axis_location', null: false
    t.integer 'y_axis_location', null: false
    t.integer 'image_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['image_id'], name: 'index_censors_on_image_id'
  end

  create_table 'consults', force: :cascade do |t|
    t.text 'questions', null: false
    t.string 'specialty', null: false
    t.boolean 'redact', default: false
    t.integer 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_consults_on_user_id'
  end

  create_table 'images', force: :cascade do |t|
    t.string 'name', null: false
    t.boolean 'has_censors', default: false
    t.integer 'img_pixel_height', null: false
    t.integer 'img_pixel_width', null: false
    t.string 'img_type', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'consult_id', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.string 'username', null: false, unique: true
    t.string 'password', null: false
    t.string 'email', null: false, unique: true
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
