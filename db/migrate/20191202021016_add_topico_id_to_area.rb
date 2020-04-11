class AddTopicoIdToArea < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :topico_id, :integer
  end
end
