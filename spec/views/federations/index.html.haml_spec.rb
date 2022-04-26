require 'rails_helper'

RSpec.describe "federations/index", type: :view do
  before(:each) do
    assign(:federations, [
      Federation.create!(
        name: "Name",
        national_team: "National Team",
        description: "MyText",
        confederation: nil
      ),
      Federation.create!(
        name: "Name",
        national_team: "National Team",
        description: "MyText",
        confederation: nil
      )
    ])
  end

  it "renders a list of federations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "National Team".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
