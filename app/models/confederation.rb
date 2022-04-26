# == Schema Information
#
# Table name: confederations
#
#  id                       :bigint           not null, primary key
#  name                     :string
#  members                  :integer
#  continental_tournament   :text
#  description              :text
#  foundation_date          :date
#  football_organization_id :bigint           not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class Confederation < ApplicationRecord
  belongs_to :football_organization
  has_many :federations

  validates :name, :members, :continental_tournament, :description, :foundation_date, presence: true
  validates :name, :continental_tournament, uniqueness: { case_sensitive: false }
end
