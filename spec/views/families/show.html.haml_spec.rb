require 'spec_helper'

describe "families/show.html.haml" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name_jp => "Name Jp",
      :name_en => "Name En"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Jp/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
  end
end
