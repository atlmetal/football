require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      name: "MyString",
      age: 1,
      current_value: "9.99",
      club: nil
    ))
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input[name=?]", "player[name]"

      assert_select "input[name=?]", "player[age]"

      assert_select "input[name=?]", "player[current_value]"

      assert_select "input[name=?]", "player[club_id]"
    end
  end
end
