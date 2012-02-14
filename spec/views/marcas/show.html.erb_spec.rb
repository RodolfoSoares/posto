require 'spec_helper'

describe "marcas/show" do
  before(:each) do
    @marca = assign(:marca, stub_model(Marca,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
