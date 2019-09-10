class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.boolean :has_censors, default: false
      t.integer :img_pixel_height, null: false
      t.integer :img_pixel_width, null: false
      t.string :img_type, null: false

      t.timestamps
    end
  end
end
