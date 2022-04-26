require 'rails_helper'

RSpec.describe "stadium/index", type: :view do
  before(:each) do
    assign(:stadium, [
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

  it "renders a list of stadium" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
