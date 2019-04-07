require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :title => "Title",
        :issue => "MyText",
        :created_by => 2,
        :status => 3
      ),
      Ticket.create!(
        :title => "Title",
        :issue => "MyText",
        :created_by => 2,
        :status => 3
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
