require 'spec_helper'

describe "photos/show.html.haml" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo))
  end

  it "renders attributes in <p>" do
    render
  end
end
