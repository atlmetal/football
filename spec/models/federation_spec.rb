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
require 'rails_helper'

RSpec.describe Federation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
