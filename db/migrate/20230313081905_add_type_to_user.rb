class AddTypeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type_of_user, :string, default: "User"
  end
end
