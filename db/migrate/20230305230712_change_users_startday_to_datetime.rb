class ChangeUsersStartdayToDatetime < ActiveRecord::Migration[6.1]
  def change
   change_column :users, :startday, :datetime
  end
end
