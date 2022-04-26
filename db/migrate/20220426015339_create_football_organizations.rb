class CreateFootballOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :football_organizations do |t|
      t.string :name
      t.text :description
      t.date :foundation_date

      t.timestamps
    end
  end
end
