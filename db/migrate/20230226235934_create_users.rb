class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :startday
      t.string :endday
      t.string :allday

      t.timestamps
    end
  end
end
