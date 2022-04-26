# == Schema Information
#
# Table name: players
#
#  id            :bigint           not null, primary key
#  name          :string
#  age           :integer
#  current_value :decimal(, )
#  club_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Player < ApplicationRecord
  belongs_to :club

  validates :name, :age, :current_value, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
