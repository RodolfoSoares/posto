# coding: utf-8

require 'spec_helper'

feature 'gerenciar usuario' do
  before :each do
  end
 
  scenario 'incluir usuario' do
    visit new_usuario_path

    fill_in 'Nome', :with => 'Whanderley'
    fill_in 'Endereço', :with => 'Av'
    fill_in 'Telefone' , :with => '123456789'
    fill_in 'Email', :with => 'whanderson@gmail.com'   
    fill_in 'Login', :with => 'whandinhototoso'

       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: Whanderley'
    page.should have_content 'Endereço: Av'
    page.should have_content 'Telefone: 123456789'
    page.should have_content 'Email: whanderson@gmail.com'
    page.should have_content 'Login: whandinhototoso'
   end

    scenario 'alterar usuario' do #, :javascript => true do
    usuario = FactoryGirl.create(:usuario)
    visit edit_usuario_path(usuario)

    fill_in 'Nome', :with => 'Whanderley'
    fill_in 'Endereço', :with => 'Av'
    fill_in 'Telefone' , :with => '123456789'
    fill_in 'Email', :with => 'whanderson@gmail.com'   
    fill_in 'Login', :with => 'whandinhototoso'

       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: Whanderley'
    page.should have_content 'Endereço: Av'
    page.should have_content 'Telefone: 123456789'
    page.should have_content 'Email: whanderson@gmail.com'
    page.should have_content 'Login: whandinhototoso'
    end
  end
