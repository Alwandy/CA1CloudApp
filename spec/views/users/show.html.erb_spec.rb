require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "Username",
      :password => "",
      :email => "Email",
      :groups => "Groups",
      :firstname => "Firstname",
      :lastname => "Lastname",
      :address => "Address",
      :postalcode => "Postalcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Groups/)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Postalcode/)
  end
end
