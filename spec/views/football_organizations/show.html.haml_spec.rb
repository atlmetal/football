require 'rails_helper'

RSpec.describe "football_organizations/show", type: :view do
  before(:each) do
    @football_organization = assign(:football_organization, FootballOrganization.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
