class CreateAuditoria < ActiveRecord::Migration[5.1]
  def change
    create_table :auditoria do |t|
      t.integer :capacity
      t.integer :film_id

      t.timestamps
    end
  end
end
