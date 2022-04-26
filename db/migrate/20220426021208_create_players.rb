class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.decimal :current_value
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
