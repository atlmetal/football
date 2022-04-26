require 'rails_helper'

RSpec.describe "stadium/edit", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!(
      name: "MyString",
      stadium_capacity: 1,
      club: nil
    ))
  end

  it "renders the edit stadium form" do
    render

    assert_select "form[action=?][method=?]", stadium_path(@stadium), "post" do

      assert_select "input[name=?]", "stadium[name]"

      assert_select "input[name=?]", "stadium[stadium_capacity]"

      assert_select "input[name=?]", "stadium[club_id]"
    end
  end
end
