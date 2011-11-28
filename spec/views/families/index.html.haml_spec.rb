require 'spec_helper'

describe "families/index.html.haml" do
  before(:each) do
    assign(:families, [
      stub_model(Family,
        :name_jp => "Name Jp",
        :name_en => "Name En"
      ),
      stub_model(Family,
        :name_jp => "Name Jp",
        :name_en => "Name En"
      )
    ])
  end

  it "renders a list of families" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Jp".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
  end
end
