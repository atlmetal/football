require 'rails_helper'

RSpec.describe "federations/edit", type: :view do
  before(:each) do
    @federation = assign(:federation, Federation.create!(
      name: "MyString",
      national_team: "MyString",
      description: "MyText",
      confederation: nil
    ))
  end

  it "renders the edit federation form" do
    render

    assert_select "form[action=?][method=?]", federation_path(@federation), "post" do

      assert_select "input[name=?]", "federation[name]"

      assert_select "input[name=?]", "federation[national_team]"

      assert_select "textarea[name=?]", "federation[description]"

      assert_select "input[name=?]", "federation[confederation_id]"
    end
  end
end
