require 'spec_helper'

describe "marcas/index" do
  before(:each) do
    assign(:marcas, [
      stub_model(Marca,
        :nome => "Nome"
      ),
      stub_model(Marca,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of marcas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
