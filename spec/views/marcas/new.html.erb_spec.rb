require 'spec_helper'

describe "marcas/new" do
  before(:each) do
    assign(:marca, stub_model(Marca,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new marca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => marcas_path, :method => "post" do
      assert_select "input#marca_nome", :name => "marca[nome]"
    end
  end
end
