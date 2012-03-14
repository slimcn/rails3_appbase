require 'spec_helper'

describe "efiles/new.html.erb" do
  before(:each) do
    assign(:efile, stub_model(Efile,
      :comments => "MyString",
      :status => 1,
      :name => "MyString",
      :description => "MyString",
      :file_type_id => 1,
      :created_by => 1
    ).as_new_record)
  end

  it "renders new efile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => efiles_path, :method => "post" do
      assert_select "input#efile_comments", :name => "efile[comments]"
      assert_select "input#efile_status", :name => "efile[status]"
      assert_select "input#efile_name", :name => "efile[name]"
      assert_select "input#efile_description", :name => "efile[description]"
      assert_select "input#efile_file_type_id", :name => "efile[file_type_id]"
      assert_select "input#efile_created_by", :name => "efile[created_by]"
    end
  end
end
