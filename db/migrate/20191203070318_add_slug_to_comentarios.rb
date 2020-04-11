class AddSlugToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :slug, :string
  end
end
