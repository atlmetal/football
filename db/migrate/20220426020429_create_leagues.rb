class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.text :local_tournament
      t.integer :club_members
      t.string :current_champion
      t.date :foundation_date
      t.references :federation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
