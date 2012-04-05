require 'spec_helper'

describe "sheet0s/show.html.erb" do
  before(:each) do
    @sheet0 = assign(:sheet0, stub_model(Sheet0,
      :f1 => "F1",
      :f2 => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/F1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
