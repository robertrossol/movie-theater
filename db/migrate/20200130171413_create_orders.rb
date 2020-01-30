class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cc
      t.string :cc_exp
      t.integer :showing_id

      t.timestamps
    end
  end
end
