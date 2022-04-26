class Createstadium < ActiveRecord::Migration[7.0]
  def change
    create_table :stadium do |t|
      t.string :name
      t.date :foundation_date
      t.integer :stadium_capacity
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
