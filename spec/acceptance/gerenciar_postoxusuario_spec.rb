# coding: utf-8

require 'spec_helper'

feature 'gerenciar postoxusuario' do
  before :each do
  end
 
  scenario 'incluir postoxusuario' do

   
    usuario = FactoryGirl.create(:usuario,:login => 'Juca')  
    postocombustivel = FactoryGirl.create(:postocombustivel,:nome => 'Arara')  
    visit new_postousuario_path


    fill_in 'Notaatendimento', :with => '4'
    fill_in 'Notageral', :with => '3'
    
    select('Juca', from: "Usuario")
    select('Arara', from: "Postocombustivel")

       
    click_button 'Salvar'
  
  
    page.should have_content 'Notaatendimento: 4'
    page.should have_content 'Notageral: 3'
    page.should have_content 'Usuario: Juca'
    page.should have_content 'Postocombustivel: Arara'

    end

    scenario 'alterar postousuario ' do #, :javascript => true do

    usuario = FactoryGirl.create(:usuario, :login => 'Juca') 
    postocombustivel = FactoryGirl.create(:postocombustivel, :nome => 'Arara')  
    postousuario = FactoryGirl.create(:postousuario, :usuario => usuario , :postocombustivel => postocombustivel) 

    visit edit_postousuario_path(postousuario)


    fill_in 'Notaatendimento', :with => '4'
    fill_in 'Notageral', :with => '3'
    
    select('Juca', from: "Usuario")
    select('Arara', from: "Postocombustivel")

       
    click_button 'Salvar'
  
  
    page.should have_content 'Notaatendimento: 4'
    page.should have_content 'Notageral: 3'
    page.should have_content 'Usuario: Juca'
    page.should have_content 'Postocombustivel: Arara'
    end
  end
