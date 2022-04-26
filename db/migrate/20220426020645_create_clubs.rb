class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.date :foundation_date
      t.integer :tittles
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
