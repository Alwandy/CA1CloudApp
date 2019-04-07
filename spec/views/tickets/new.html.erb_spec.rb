require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :title => "MyString",
      :issue => "MyText",
      :created_by => 1,
      :status => 1
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input[name=?]", "ticket[title]"

      assert_select "textarea[name=?]", "ticket[issue]"

      assert_select "input[name=?]", "ticket[created_by]"

      assert_select "input[name=?]", "ticket[status]"
    end
  end
end
