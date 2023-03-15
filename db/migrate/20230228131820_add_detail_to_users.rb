class AddDetailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :detail, :string
  end
end
