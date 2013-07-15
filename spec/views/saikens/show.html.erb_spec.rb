require 'spec_helper'

describe "saikens/show" do
  before(:each) do
    @saiken = assign(:saiken, stub_model(Saiken,
      :customer_id => 1,
      :creditor_id => 2,
      :wakai_gaku => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
