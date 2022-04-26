require 'rails_helper'

RSpec.describe "leagues/edit", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      name: "MyString",
      local_tournament: "MyText",
      club_members: 1,
      current_champion: "MyString",
      federation: nil
    ))
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(@league), "post" do

      assert_select "input[name=?]", "league[name]"

      assert_select "textarea[name=?]", "league[local_tournament]"

      assert_select "input[name=?]", "league[club_members]"

      assert_select "input[name=?]", "league[current_champion]"

      assert_select "input[name=?]", "league[federation_id]"
    end
  end
end
