class AddTopicoIdToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :topico_id, :integer
  end
end
