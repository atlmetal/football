require 'rails_helper'

RSpec.describe "football_organizations/index", type: :view do
  before(:each) do
    assign(:football_organizations, [
      FootballOrganization.create!(
        name: "Name",
        description: "MyText"
      ),
      FootballOrganization.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of football_organizations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
