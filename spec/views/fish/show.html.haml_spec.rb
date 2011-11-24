require 'spec_helper'

describe "fish/show.html.haml" do
  before(:each) do
    @fish = assign(:fish, stub_model(Fish,
      :family_jp => "Family Jp",
      :name_jp => "Name Jp",
      :nickname_jp => "Nickname Jp",
      :family_en => "Family En",
      :name_en => "Name En",
      :name_la => "Name La"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family Jp/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Jp/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname Jp/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name La/)
  end
end
