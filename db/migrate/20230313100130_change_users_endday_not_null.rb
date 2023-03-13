class ChangeUsersEnddayNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :endday, false
  end
end
