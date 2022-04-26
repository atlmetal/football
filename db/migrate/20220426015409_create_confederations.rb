class CreateConfederations < ActiveRecord::Migration[7.0]
  def change
    create_table :confederations do |t|
      t.string :name
      t.integer :members
      t.text :continental_tournament
      t.text :description
      t.date :foundation_date
      t.references :football_organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
