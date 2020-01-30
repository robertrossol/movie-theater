class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.time :time
      t.integer :auditorium_id

      t.timestamps
    end
  end
end
