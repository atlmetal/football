require 'rails_helper'

RSpec.describe "clubs/show", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      name: "Name",
      tittles: 2,
      league: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
