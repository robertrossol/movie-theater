class AddColumnsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :film_name, :string
    add_column :orders, :showing_time, :string
    add_column :orders, :auditorium_id, :integer
  end
end
