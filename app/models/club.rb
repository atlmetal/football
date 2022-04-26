# == Schema Information
#
# Table name: clubs
#
#  id              :bigint           not null, primary key
#  name            :string
#  foundation_date :date
#  tittles         :integer
#  league_id       :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Club < ApplicationRecord
  belongs_to :league
  has_many :players
  has_many :stadiums
end
