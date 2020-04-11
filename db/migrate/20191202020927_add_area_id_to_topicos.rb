class AddAreaIdToTopicos < ActiveRecord::Migration[5.2]
  def change
    add_column :topicos, :area_id, :integer
  end
end
