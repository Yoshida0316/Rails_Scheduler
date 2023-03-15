class ChangeEnddayToUsers < ActiveRecord::Migration[6.1]
  def change
      change_column :users, :endday, :datetime
  end
end
