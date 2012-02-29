class Postousuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :postocombustivel
end
