require 'rails_helper'

RSpec.describe "stadia/show", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!(
      name: "Name",
      stadium_capacity: 2,
      club: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
