require 'rails_helper'

RSpec.describe "football_organizations/edit", type: :view do
  before(:each) do
    @football_organization = assign(:football_organization, FootballOrganization.create!(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit football_organization form" do
    render

    assert_select "form[action=?][method=?]", football_organization_path(@football_organization), "post" do

      assert_select "input[name=?]", "football_organization[name]"

      assert_select "textarea[name=?]", "football_organization[description]"
    end
  end
end
