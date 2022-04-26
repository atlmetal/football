require 'rails_helper'

RSpec.describe "confederations/new", type: :view do
  before(:each) do
    assign(:confederation, Confederation.new(
      name: "MyString",
      members: 1,
      continental_tournament: "MyText",
      description: "MyText",
      football_organization: nil
    ))
  end

  it "renders new confederation form" do
    render

    assert_select "form[action=?][method=?]", confederations_path, "post" do

      assert_select "input[name=?]", "confederation[name]"

      assert_select "input[name=?]", "confederation[members]"

      assert_select "textarea[name=?]", "confederation[continental_tournament]"

      assert_select "textarea[name=?]", "confederation[description]"

      assert_select "input[name=?]", "confederation[football_organization_id]"
    end
  end
end
