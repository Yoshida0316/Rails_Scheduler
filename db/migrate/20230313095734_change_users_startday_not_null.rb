class ChangeUsersStartdayNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :startday, false
  end
end
