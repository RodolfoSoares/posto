require 'spec_helper'

describe "usuarios/edit" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path(@usuario), :method => "post" do
      assert_select "input#usuario_nome", :name => "usuario[nome]"
      assert_select "input#usuario_endereco", :name => "usuario[endereco]"
      assert_select "input#usuario_telefone", :name => "usuario[telefone]"
      assert_select "input#usuario_email", :name => "usuario[email]"
      assert_select "input#usuario_login", :name => "usuario[login]"
    end
  end
end
