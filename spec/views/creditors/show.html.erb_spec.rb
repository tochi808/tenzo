require 'spec_helper'

describe "creditors/show" do
  before(:each) do
    @creditor = assign(:creditor, stub_model(Creditor,
      :name => "Name",
      :simple_name => "Simple Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Simple Name/)
  end
end
