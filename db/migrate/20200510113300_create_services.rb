class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :offered_title
      t.string :needed_title
      t.date :deadline
      t.date :available_dates
      t.text :description_offered
      t.text :description_needed
      t.references :user, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
