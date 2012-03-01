require 'spec_helper'

describe "combustivels/new" do
  before(:each) do
    assign(:combustivel, stub_model(Combustivel,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new combustivel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => combustivels_path, :method => "post" do
      assert_select "input#combustivel_tipo", :name => "combustivel[tipo]"
    end
  end
end
