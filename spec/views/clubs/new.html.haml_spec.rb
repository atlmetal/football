require 'rails_helper'

RSpec.describe "clubs/new", type: :view do
  before(:each) do
    assign(:club, Club.new(
      name: "MyString",
      tittles: 1,
      league: nil
    ))
  end

  it "renders new club form" do
    render

    assert_select "form[action=?][method=?]", clubs_path, "post" do

      assert_select "input[name=?]", "club[name]"

      assert_select "input[name=?]", "club[tittles]"

      assert_select "input[name=?]", "club[league_id]"
    end
  end
end
