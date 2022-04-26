# == Schema Information
#
# Table name: football_organizations
#
#  id              :bigint           not null, primary key
#  name            :string
#  description     :text
#  foundation_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class FootballOrganization < ApplicationRecord
  validates :name, :description, :foundation_date, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
