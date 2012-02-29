require 'spec_helper'

describe "postousuarios/index" do
  before(:each) do
    assign(:postousuarios, [
      stub_model(Postousuario,
        :notaatendimento => "Notaatendimento",
        :notageral => "Notageral",
        :usuario => nil,
        :postocombustivel => nil
      ),
      stub_model(Postousuario,
        :notaatendimento => "Notaatendimento",
        :notageral => "Notageral",
        :usuario => nil,
        :postocombustivel => nil
      )
    ])
  end

  it "renders a list of postousuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notaatendimento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notageral".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
