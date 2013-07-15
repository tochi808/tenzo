require 'spec_helper'

describe "saikens/edit" do
  before(:each) do
    @saiken = assign(:saiken, stub_model(Saiken,
      :customer_id => 1,
      :creditor_id => 1,
      :wakai_gaku => 1
    ))
  end

  it "renders the edit saiken form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", saiken_path(@saiken), "post" do
      assert_select "input#saiken_customer_id[name=?]", "saiken[customer_id]"
      assert_select "input#saiken_creditor_id[name=?]", "saiken[creditor_id]"
      assert_select "input#saiken_wakai_gaku[name=?]", "saiken[wakai_gaku]"
    end
  end
end
