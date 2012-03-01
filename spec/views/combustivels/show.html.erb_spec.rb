require 'spec_helper'

describe "combustivels/show" do
  before(:each) do
    @combustivel = assign(:combustivel, stub_model(Combustivel,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
