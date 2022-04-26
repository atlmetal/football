# == Schema Information
#
# Table name: stadium
#
#  id               :bigint           not null, primary key
#  name             :string
#  foundation_date  :date
#  stadium_capacity :integer
#  club_id          :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Stadium < ApplicationRecord
  belongs_to :club
end
