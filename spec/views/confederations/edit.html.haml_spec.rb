require 'rails_helper'

RSpec.describe "confederations/edit", type: :view do
  before(:each) do
    @confederation = assign(:confederation, Confederation.create!(
      name: "MyString",
      members: 1,
      continental_tournament: "MyText",
      description: "MyText",
      football_organization: nil
    ))
  end

  it "renders the edit confederation form" do
    render

    assert_select "form[action=?][method=?]", confederation_path(@confederation), "post" do

      assert_select "input[name=?]", "confederation[name]"

      assert_select "input[name=?]", "confederation[members]"

      assert_select "textarea[name=?]", "confederation[continental_tournament]"

      assert_select "textarea[name=?]", "confederation[description]"

      assert_select "input[name=?]", "confederation[football_organization_id]"
    end
  end
end
