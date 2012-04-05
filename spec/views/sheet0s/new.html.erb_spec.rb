require 'spec_helper'

describe "sheet0s/new.html.erb" do
  before(:each) do
    assign(:sheet0, stub_model(Sheet0,
      :f1 => "MyString",
      :f2 => 1
    ).as_new_record)
  end

  it "renders new sheet0 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheet0s_path, :method => "post" do
      assert_select "input#sheet0_f1", :name => "sheet0[f1]"
      assert_select "input#sheet0_f2", :name => "sheet0[f2]"
    end
  end
end
