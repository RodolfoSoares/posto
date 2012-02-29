# coding: utf-8

require 'spec_helper'

feature 'gerenciar postocombustivel' do
  before :each do
  end
 
  scenario 'incluir postocombustivel' do

   
    marca = FactoryGirl.create(:marca,:nome => 'Ipyranga')  
    visit new_postocombustivel_path


    fill_in 'Nome', :with => 'Arara Azul'
    fill_in 'postocombustivel_endereco', :with => 'Av. 28 de março'
    fill_in 'Telefone' , :with => '123456789'
    fill_in 'Cep', :with => '28020152' 
    fill_in 'Cnpj', :with => '65443514264'
    fill_in 'Email', :with => 'araraazul@gmail.com'   
    fill_in 'postocombustivel_mediacombustivel', :with => '3'
    fill_in 'postocombustivel_mediaatendimento', :with => '4'
    fill_in 'postocombustivel_mediapreco', :with => '4'
    fill_in 'postocombustivel_mediageral', :with => '3'
    
    select('Ipyranga', from: "Marca")

       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: Arara Azul'
    page.should have_content 'Endereço: Av. 28 de março'
    page.should have_content 'Telefone: 123456789'
    page.should have_content 'Cep: 28020152'
    page.should have_content 'Cnpj: 65443514264'
    page.should have_content 'Email: araraazul@gmail.com'
    page.should have_content 'Mediacombustivel: 3'
    page.should have_content 'Mediaatendimento: 4'
    page.should have_content 'Mediapreco: 4'
    page.should have_content 'Mediageral: 3'
    page.should have_content 'Marca: Ipyranga'

  end

    scenario 'alterar postocombustivel ' do #, :javascript => true do

    marca = FactoryGirl.create(:marca,:nome => 'Ipyranga')
    postocombustivel = FactoryGirl.create(:postocombustivel, :marca => marca)

    visit edit_postocombustivel_path(postocombustivel)

    fill_in 'Nome', :with => 'Arara Azul'
    fill_in 'postocombustivel_endereco', :with => 'Av. 28 de março'
    fill_in 'Telefone' , :with => '123456789'
    fill_in 'Cep', :with => '28020152' 
    fill_in 'Cnpj', :with => '65443514264'
    fill_in 'Email', :with => 'araraazul@gmail.com'   
    fill_in 'postocombustivel_mediacombustivel', :with => '3'
    fill_in 'postocombustivel_mediaatendimento', :with => '4'
    fill_in 'postocombustivel_mediapreco', :with => '4'
    fill_in 'postocombustivel_mediageral', :with => '3'
    
    select('Ipyranga', from: "Marca")

       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: Arara Azul'
    page.should have_content 'Endereço: Av. 28 de março'
    page.should have_content 'Telefone: 123456789'
    page.should have_content 'Cep: 28020152'
    page.should have_content 'Cnpj: 65443514264'
    page.should have_content 'Email: araraazul@gmail.com'
    page.should have_content 'Mediacombustivel: 3'
    page.should have_content 'Mediaatendimento: 4'
    page.should have_content 'Mediapreco: 4'
    page.should have_content 'Mediageral: 3'
    page.should have_content 'Marca: Ipyranga'
  end
   scenario 'Excluir postocombustivel' do #, :javascript => true do

    marca = FactoryGirl.create(:marca,:nome => 'Ipyranga')
    postocombustivel = FactoryGirl.create(:postocombustivel, :marca => marca)

    visit postocombustivels_path
    click_link 'Excluir'

  end
end
