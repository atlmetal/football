# == Schema Information
#
# Table name: leagues
#
#  id               :bigint           not null, primary key
#  name             :string
#  local_tournament :text
#  club_members     :integer
#  current_champion :string
#  foundation_date  :date
#  federation_id    :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class League < ApplicationRecord
  belongs_to :federation
  has_many :clubs
end
