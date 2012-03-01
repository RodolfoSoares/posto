# coding: utf-8

require 'spec_helper'

feature 'gerenciar combustivel' do
  before :each do
  end
  
  scenario 'incluir combustivel' do
    visit new_combustivel_path
    
    fill_in 'Tipo', :with => 'Alcool'
        
    click_button 'Salvar'
   
    page.should have_content 'Tipo: Alcool'
  end
end
