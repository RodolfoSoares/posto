require 'spec_helper'

describe "postocombustivels/show" do
  before(:each) do
    @postocombustivel = assign(:postocombustivel, stub_model(Postocombustivel,
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :cep => "Cep",
      :cnpj => "Cnpj",
      :email => "Email",
      :mediacombustivel => "Mediacombustivel",
      :mediaatendimento => "Mediaatendimento",
      :mediapreco => "Mediapreco",
      :mediageral => "Mediageral",
      :marca => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cnpj/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mediacombustivel/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mediaatendimento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mediapreco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mediageral/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
