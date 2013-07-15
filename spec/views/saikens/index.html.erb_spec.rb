require 'spec_helper'

describe "saikens/index" do
  before(:each) do
    assign(:saikens, [
      stub_model(Saiken,
        :customer_id => 1,
        :creditor_id => 2,
        :wakai_gaku => 3
      ),
      stub_model(Saiken,
        :customer_id => 1,
        :creditor_id => 2,
        :wakai_gaku => 3
      )
    ])
  end

  it "renders a list of saikens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
