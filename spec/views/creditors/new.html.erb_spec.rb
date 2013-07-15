require 'spec_helper'

describe "creditors/new" do
  before(:each) do
    assign(:creditor, stub_model(Creditor,
      :name => "MyString",
      :simple_name => "MyString"
    ).as_new_record)
  end

  it "renders new creditor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", creditors_path, "post" do
      assert_select "input#creditor_name[name=?]", "creditor[name]"
      assert_select "input#creditor_simple_name[name=?]", "creditor[simple_name]"
    end
  end
end
