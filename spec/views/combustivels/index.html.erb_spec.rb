require 'spec_helper'

describe "combustivels/index" do
  before(:each) do
    assign(:combustivels, [
      stub_model(Combustivel,
        :tipo => "Tipo"
      ),
      stub_model(Combustivel,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of combustivels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
