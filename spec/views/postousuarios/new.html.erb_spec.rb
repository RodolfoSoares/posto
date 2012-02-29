require 'spec_helper'

describe "postousuarios/new" do
  before(:each) do
    assign(:postousuario, stub_model(Postousuario,
      :notaatendimento => "MyString",
      :notageral => "MyString",
      :usuario => nil,
      :postocombustivel => nil
    ).as_new_record)
  end

  it "renders new postousuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postousuarios_path, :method => "post" do
      assert_select "input#postousuario_notaatendimento", :name => "postousuario[notaatendimento]"
      assert_select "input#postousuario_notageral", :name => "postousuario[notageral]"
      assert_select "input#postousuario_usuario", :name => "postousuario[usuario]"
      assert_select "input#postousuario_postocombustivel", :name => "postousuario[postocombustivel]"
    end
  end
end
