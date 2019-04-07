require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :title => "MyString",
      :issue => "MyText",
      :created_by => 1,
      :status => 1
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input[name=?]", "ticket[title]"

      assert_select "textarea[name=?]", "ticket[issue]"

      assert_select "input[name=?]", "ticket[created_by]"

      assert_select "input[name=?]", "ticket[status]"
    end
  end
end
