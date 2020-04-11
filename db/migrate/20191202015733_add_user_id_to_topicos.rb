class AddUserIdToTopicos < ActiveRecord::Migration[5.2]
  def change
    add_column :topicos, :user_id, :integer
  end
end
