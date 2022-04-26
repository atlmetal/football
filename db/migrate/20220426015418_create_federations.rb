class CreateFederations < ActiveRecord::Migration[7.0]
  def change
    create_table :federations do |t|
      t.string :name
      t.string :national_team
      t.text :description
      t.date :foundation_date
      t.references :confederation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
