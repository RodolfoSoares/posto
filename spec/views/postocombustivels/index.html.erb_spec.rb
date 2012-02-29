require 'spec_helper'

describe "postocombustivels/index" do
  before(:each) do
    assign(:postocombustivels, [
      stub_model(Postocombustivel,
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
      ),
      stub_model(Postocombustivel,
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
      )
    ])
  end

  it "renders a list of postocombustivels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mediacombustivel".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mediaatendimento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mediapreco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mediageral".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
