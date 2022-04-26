require 'rails_helper'

RSpec.describe "stadia/index", type: :view do
  before(:each) do
    assign(:stadia, [
      Stadium.create!(
        name: "Name",
        stadium_capacity: 2,
        club: nil
      ),
      Stadium.create!(
        name: "Name",
        stadium_capacity: 2,
        club: nil
      )
    ])
  end

  it "renders a list of stadia" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
