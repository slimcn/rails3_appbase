require 'spec_helper'

describe "sheets/edit.html.erb" do
  before(:each) do
    @sheet = assign(:sheet, stub_model(Sheet,
      :code => "MyString",
      :name => "MyString",
      :status => 1,
      :comment => "MyString"
    ))
  end

  it "renders the edit sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheets_path(@sheet), :method => "post" do
      assert_select "input#sheet_code", :name => "sheet[code]"
      assert_select "input#sheet_name", :name => "sheet[name]"
      assert_select "input#sheet_status", :name => "sheet[status]"
      assert_select "input#sheet_comment", :name => "sheet[comment]"
    end
  end
end
