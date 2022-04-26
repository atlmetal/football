require 'rails_helper'

RSpec.describe "clubs/index", type: :view do
  before(:each) do
    assign(:clubs, [
      Club.create!(
        name: "Name",
        tittles: 2,
        league: nil
      ),
      Club.create!(
        name: "Name",
        tittles: 2,
        league: nil
      )
    ])
  end

  it "renders a list of clubs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
