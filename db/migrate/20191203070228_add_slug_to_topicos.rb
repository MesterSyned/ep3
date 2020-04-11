class AddSlugToTopicos < ActiveRecord::Migration[5.2]
  def change
    add_column :topicos, :slug, :string
  end
end
