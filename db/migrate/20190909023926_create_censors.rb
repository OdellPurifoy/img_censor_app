class CreateCensors < ActiveRecord::Migration[5.2]
  def change
    create_table :censors do |t|
      t.integer :censor_pixel_height, null: false
      t.integer :censor_pixel_width, null: false
      t.integer :x_axis_location, null: false
      t.integer :y_axis_location, null: false
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
