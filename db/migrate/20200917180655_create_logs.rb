class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.references :habit, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
