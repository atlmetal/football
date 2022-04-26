require 'rails_helper'

RSpec.describe "football_organizations/new", type: :view do
  before(:each) do
    assign(:football_organization, FootballOrganization.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new football_organization form" do
    render

    assert_select "form[action=?][method=?]", football_organizations_path, "post" do

      assert_select "input[name=?]", "football_organization[name]"

      assert_select "textarea[name=?]", "football_organization[description]"
    end
  end
end
