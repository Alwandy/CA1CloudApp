require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyString",
      :password => "",
      :email => "MyString",
      :groups => "MyString",
      :firstname => "MyString",
      :lastname => "MyString",
      :address => "MyString",
      :postalcode => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[password]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[groups]"

      assert_select "input[name=?]", "user[firstname]"

      assert_select "input[name=?]", "user[lastname]"

      assert_select "input[name=?]", "user[address]"

      assert_select "input[name=?]", "user[postalcode]"
    end
  end
end
