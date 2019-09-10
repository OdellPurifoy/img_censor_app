class CreateConsults < ActiveRecord::Migration[5.2]
  def change
    create_table :consults do |t|
      t.text :questions, null: false
      t.string :specialty, null: false
      t.boolean :redact, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
