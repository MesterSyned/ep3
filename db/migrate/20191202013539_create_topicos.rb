class CreateTopicos < ActiveRecord::Migration[5.2]
  def change
    create_table :topicos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
