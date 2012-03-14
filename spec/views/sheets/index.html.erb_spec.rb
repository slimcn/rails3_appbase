require 'spec_helper'

describe "sheets/index.html.erb" do
  before(:each) do
    assign(:sheets, [
      stub_model(Sheet,
        :code => "Code",
        :name => "Name",
        :status => 1,
        :comment => "Comment"
      ),
      stub_model(Sheet,
        :code => "Code",
        :name => "Name",
        :status => 1,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
