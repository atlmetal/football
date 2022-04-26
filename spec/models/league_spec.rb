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
require 'rails_helper'

RSpec.describe League, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
