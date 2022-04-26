require 'rails_helper'

RSpec.describe "confederations/index", type: :view do
  before(:each) do
    assign(:confederations, [
      Confederation.create!(
        name: "Name",
        members: 2,
        continental_tournament: "MyText",
        description: "MyText",
        football_organization: nil
      ),
      Confederation.create!(
        name: "Name",
        members: 2,
        continental_tournament: "MyText",
        description: "MyText",
        football_organization: nil
      )
    ])
  end

  it "renders a list of confederations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
