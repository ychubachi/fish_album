require 'spec_helper'

describe "fish/new.html.haml" do
  before(:each) do
    assign(:fish, stub_model(Fish,
      :family_jp => "MyString",
      :name_jp => "MyString",
      :nickname_jp => "MyString",
      :family_en => "MyString",
      :name_en => "MyString",
      :name_la => "MyString"
    ).as_new_record)
  end

  it "renders new fish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fish_index_path, :method => "post" do
      assert_select "input#fish_family_jp", :name => "fish[family_jp]"
      assert_select "input#fish_name_jp", :name => "fish[name_jp]"
      assert_select "input#fish_nickname_jp", :name => "fish[nickname_jp]"
      assert_select "input#fish_family_en", :name => "fish[family_en]"
      assert_select "input#fish_name_en", :name => "fish[name_en]"
      assert_select "input#fish_name_la", :name => "fish[name_la]"
    end
  end
end
