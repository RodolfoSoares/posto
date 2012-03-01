require 'spec_helper'

describe "combustivels/edit" do
  before(:each) do
    @combustivel = assign(:combustivel, stub_model(Combustivel,
      :tipo => "MyString"
    ))
  end

  it "renders the edit combustivel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => combustivels_path(@combustivel), :method => "post" do
      assert_select "input#combustivel_tipo", :name => "combustivel[tipo]"
    end
  end
end
