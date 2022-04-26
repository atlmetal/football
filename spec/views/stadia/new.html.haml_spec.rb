require 'rails_helper'

RSpec.describe "stadium/new", type: :view do
  before(:each) do
    assign(:stadium, Stadium.new(
      name: "MyString",
      stadium_capacity: 1,
      club: nil
    ))
  end

  it "renders new stadium form" do
    render

    assert_select "form[action=?][method=?]", stadium_path, "post" do

      assert_select "input[name=?]", "stadium[name]"

      assert_select "input[name=?]", "stadium[stadium_capacity]"

      assert_select "input[name=?]", "stadium[club_id]"
    end
  end
end
