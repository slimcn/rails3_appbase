require 'spec_helper'

describe "sheet0s/index.html.erb" do
  before(:each) do
    assign(:sheet0s, [
      stub_model(Sheet0,
        :f1 => "F1",
        :f2 => 1
      ),
      stub_model(Sheet0,
        :f1 => "F1",
        :f2 => 1
      )
    ])
  end

  it "renders a list of sheet0s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "F1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
