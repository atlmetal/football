require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    assign(:player, Player.new(
      name: "MyString",
      age: 1,
      current_value: "9.99",
      club: nil
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input[name=?]", "player[name]"

      assert_select "input[name=?]", "player[age]"

      assert_select "input[name=?]", "player[current_value]"

      assert_select "input[name=?]", "player[club_id]"
    end
  end
end
