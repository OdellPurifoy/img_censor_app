class AddConsultIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :consult_id, :integer
  end
end
