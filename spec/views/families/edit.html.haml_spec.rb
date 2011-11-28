require 'spec_helper'

describe "families/edit.html.haml" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name_jp => "MyString",
      :name_en => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => families_path(@family), :method => "post" do
      assert_select "input#family_name_jp", :name => "family[name_jp]"
      assert_select "input#family_name_en", :name => "family[name_en]"
    end
  end
end
