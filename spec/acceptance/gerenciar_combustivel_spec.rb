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
    scenario 'alterar combustivel' do #, :javascript => true do
    combustivel = FactoryGirl.create(:combustivel)
    visit edit_combustivel_path(combustivel)
   fill_in 'Tipo', :with => 'Alcool'
        
    click_button 'Salvar'
   
    page.should have_content 'Tipo: Alcool'
    
  end
 
   scenario 'excluir combustivel' do #, :javascript => true do
    combustivel = FactoryGirl.create(:combustivel)
    visit combustivels_path

    click_link 'Excluir'
    
    Combustivel.count.should == 0
  end
end
