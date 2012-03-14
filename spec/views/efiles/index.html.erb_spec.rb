require 'spec_helper'

describe "efiles/index.html.erb" do
  before(:each) do
    assign(:efiles, [
      stub_model(Efile,
        :comments => "Comments",
        :status => 1,
        :name => "Name",
        :description => "Description",
        :file_type_id => 1,
        :created_by => 1
      ),
      stub_model(Efile,
        :comments => "Comments",
        :status => 1,
        :name => "Name",
        :description => "Description",
        :file_type_id => 1,
        :created_by => 1
      )
    ])
  end

  it "renders a list of efiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
