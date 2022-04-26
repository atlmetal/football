require 'rails_helper'

RSpec.describe "federations/show", type: :view do
  before(:each) do
    @federation = assign(:federation, Federation.create!(
      name: "Name",
      national_team: "National Team",
      description: "MyText",
      confederation: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/National Team/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
