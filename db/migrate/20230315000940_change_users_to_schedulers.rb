class ChangeUsersToSchedulers < ActiveRecord::Migration[6.1]
  def change
   rename_table :users, :schedulers
  end
end
