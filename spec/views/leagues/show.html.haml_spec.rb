require 'rails_helper'

RSpec.describe "leagues/show", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      name: "Name",
      local_tournament: "MyText",
      club_members: 2,
      current_champion: "Current Champion",
      federation: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Current Champion/)
    expect(rendered).to match(//)
  end
end
