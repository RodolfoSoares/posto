require 'spec_helper'

describe "marcas/edit" do
  before(:each) do
    @marca = assign(:marca, stub_model(Marca,
      :nome => "MyString"
    ))
  end

  it "renders the edit marca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => marcas_path(@marca), :method => "post" do
      assert_select "input#marca_nome", :name => "marca[nome]"
    end
  end
end
