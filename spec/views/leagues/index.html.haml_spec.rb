require 'rails_helper'

RSpec.describe "leagues/index", type: :view do
  before(:each) do
    assign(:leagues, [
      League.create!(
        name: "Name",
        local_tournament: "MyText",
        club_members: 2,
        current_champion: "Current Champion",
        federation: nil
      ),
      League.create!(
        name: "Name",
        local_tournament: "MyText",
        club_members: 2,
        current_champion: "Current Champion",
        federation: nil
      )
    ])
  end

  it "renders a list of leagues" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Current Champion".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
