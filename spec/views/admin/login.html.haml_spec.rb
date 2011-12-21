# -*- coding: utf-8 -*-
require 'spec_helper'

describe "admin/login.html.haml" do
  it "desplays 管理画面"do
    render
    rendered.should =~ /管理画面/
  end
end
