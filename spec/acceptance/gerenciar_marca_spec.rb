# coding: utf-8

require 'spec_helper'

feature 'gerenciar marca' do
  before :each do
  end
  
  scenario 'incluir marca' do
    visit new_marca_path
    
    fill_in 'Nome', :with => 'Ipiranga'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Ipiranga'
  end

 
end
