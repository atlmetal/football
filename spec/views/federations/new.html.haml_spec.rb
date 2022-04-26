require 'rails_helper'

RSpec.describe "federations/new", type: :view do
  before(:each) do
    assign(:federation, Federation.new(
      name: "MyString",
      national_team: "MyString",
      description: "MyText",
      confederation: nil
    ))
  end

  it "renders new federation form" do
    render

    assert_select "form[action=?][method=?]", federations_path, "post" do

      assert_select "input[name=?]", "federation[name]"

      assert_select "input[name=?]", "federation[national_team]"

      assert_select "textarea[name=?]", "federation[description]"

      assert_select "input[name=?]", "federation[confederation_id]"
    end
  end
end
