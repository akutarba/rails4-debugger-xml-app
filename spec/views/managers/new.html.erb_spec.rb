require 'spec_helper'

describe "managers/new" do
  before(:each) do
    assign(:manager, stub_model(Manager,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new manager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", managers_path, "post" do
      assert_select "input#manager_name[name=?]", "manager[name]"
    end
  end
end
