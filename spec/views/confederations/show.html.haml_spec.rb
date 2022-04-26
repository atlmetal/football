require 'rails_helper'

RSpec.describe "confederations/show", type: :view do
  before(:each) do
    @confederation = assign(:confederation, Confederation.create!(
      name: "Name",
      members: 2,
      continental_tournament: "MyText",
      description: "MyText",
      football_organization: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
