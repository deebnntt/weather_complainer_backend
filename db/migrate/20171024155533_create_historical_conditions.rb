class CreateHistoricalConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :historical_conditions do |t|
      t.integer :city_id
      t.date :date
      t.float :daily_avg_high
      t.float :daily_avg_low
      t.float :daily_avg_precip
    end
  end
end
