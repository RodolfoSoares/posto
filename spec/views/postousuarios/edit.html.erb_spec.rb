require 'spec_helper'

describe "postousuarios/edit" do
  before(:each) do
    @postousuario = assign(:postousuario, stub_model(Postousuario,
      :notaatendimento => "MyString",
      :notageral => "MyString",
      :usuario => nil,
      :postocombustivel => nil
    ))
  end

  it "renders the edit postousuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postousuarios_path(@postousuario), :method => "post" do
      assert_select "input#postousuario_notaatendimento", :name => "postousuario[notaatendimento]"
      assert_select "input#postousuario_notageral", :name => "postousuario[notageral]"
      assert_select "input#postousuario_usuario", :name => "postousuario[usuario]"
      assert_select "input#postousuario_postocombustivel", :name => "postousuario[postocombustivel]"
    end
  end
end
