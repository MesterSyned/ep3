class AddSlugToAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :slug, :string
  end
end
