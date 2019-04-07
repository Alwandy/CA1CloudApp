require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :password => "",
        :email => "Email",
        :groups => "Groups",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address",
        :postalcode => "Postalcode"
      ),
      User.create!(
        :username => "Username",
        :password => "",
        :email => "Email",
        :groups => "Groups",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address",
        :postalcode => "Postalcode"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Groups".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Postalcode".to_s, :count => 2
  end
end
