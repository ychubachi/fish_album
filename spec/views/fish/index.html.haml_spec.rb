require 'spec_helper'

describe "fish/index.html.haml" do
  before(:each) do
    assign(:fish, [
      stub_model(Fish,
        :family_jp => "Family Jp",
        :name_jp => "Name Jp",
        :nickname_jp => "Nickname Jp",
        :family_en => "Family En",
        :name_en => "Name En",
        :name_la => "Name La"
      ),
      stub_model(Fish,
        :family_jp => "Family Jp",
        :name_jp => "Name Jp",
        :nickname_jp => "Nickname Jp",
        :family_en => "Family En",
        :name_en => "Name En",
        :name_la => "Name La"
      )
    ])
  end

  it "renders a list of fish" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family Jp".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Jp".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname Jp".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name La".to_s, :count => 2
  end
end
