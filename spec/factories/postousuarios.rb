# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :postousuario do
    notaatendimento "MyString"
    notageral "MyString"
    usuario nil
    postocombustivel nil
  end
end
