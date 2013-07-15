require 'spec_helper'

describe "creditors/index" do
  before(:each) do
    assign(:creditors, [
      stub_model(Creditor,
        :name => "Name",
        :simple_name => "Simple Name"
      ),
      stub_model(Creditor,
        :name => "Name",
        :simple_name => "Simple Name"
      )
    ])
  end

  it "renders a list of creditors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Simple Name".to_s, :count => 2
  end
end
