class RenameDaysAttribute < ActiveRecord::Migration[6.0]
  def change
    rename_column :days, :date, :logs_date
  end
end
