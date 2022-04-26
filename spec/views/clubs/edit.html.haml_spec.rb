require 'rails_helper'

RSpec.describe "clubs/edit", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      name: "MyString",
      tittles: 1,
      league: nil
    ))
  end

  it "renders the edit club form" do
    render

    assert_select "form[action=?][method=?]", club_path(@club), "post" do

      assert_select "input[name=?]", "club[name]"

      assert_select "input[name=?]", "club[tittles]"

      assert_select "input[name=?]", "club[league_id]"
    end
  end
end
