# == Schema Information
#
# Table name: federations
#
#  id               :bigint           not null, primary key
#  name             :string
#  national_team    :string
#  description      :text
#  foundation_date  :date
#  confederation_id :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Federation < ApplicationRecord
  belongs_to :confederation
  has_many :leagues
end
