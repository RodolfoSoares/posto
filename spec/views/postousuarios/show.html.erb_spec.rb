require 'spec_helper'

describe "postousuarios/show" do
  before(:each) do
    @postousuario = assign(:postousuario, stub_model(Postousuario,
      :notaatendimento => "Notaatendimento",
      :notageral => "Notageral",
      :usuario => nil,
      :postocombustivel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notaatendimento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notageral/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
