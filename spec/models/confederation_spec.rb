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
require 'rails_helper'

RSpec.describe Confederation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
