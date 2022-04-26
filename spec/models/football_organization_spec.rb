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
require 'rails_helper'

RSpec.describe FootballOrganization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
