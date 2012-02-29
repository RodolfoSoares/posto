require 'spec_helper'

describe "postocombustivels/new" do
  before(:each) do
    assign(:postocombustivel, stub_model(Postocombustivel,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :cep => "MyString",
      :cnpj => "MyString",
      :email => "MyString",
      :mediacombustivel => "MyString",
      :mediaatendimento => "MyString",
      :mediapreco => "MyString",
      :mediageral => "MyString",
      :marca => nil
    ).as_new_record)
  end

  it "renders new postocombustivel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postocombustivels_path, :method => "post" do
      assert_select "input#postocombustivel_nome", :name => "postocombustivel[nome]"
      assert_select "input#postocombustivel_endereco", :name => "postocombustivel[endereco]"
      assert_select "input#postocombustivel_telefone", :name => "postocombustivel[telefone]"
      assert_select "input#postocombustivel_cep", :name => "postocombustivel[cep]"
      assert_select "input#postocombustivel_cnpj", :name => "postocombustivel[cnpj]"
      assert_select "input#postocombustivel_email", :name => "postocombustivel[email]"
      assert_select "input#postocombustivel_mediacombustivel", :name => "postocombustivel[mediacombustivel]"
      assert_select "input#postocombustivel_mediaatendimento", :name => "postocombustivel[mediaatendimento]"
      assert_select "input#postocombustivel_mediapreco", :name => "postocombustivel[mediapreco]"
      assert_select "input#postocombustivel_mediageral", :name => "postocombustivel[mediageral]"
      assert_select "input#postocombustivel_marca", :name => "postocombustivel[marca]"
    end
  end
end
