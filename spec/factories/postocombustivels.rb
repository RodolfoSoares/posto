# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :postocombustivel do
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
    cep "MyString"
    cnpj "MyString"
    email "MyString"
    mediacombustivel "MyString"
    mediaatendimento "MyString"
    mediapreco "MyString"
    mediageral "MyString"
    marca nil
  end
end
