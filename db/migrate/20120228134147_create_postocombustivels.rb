class CreatePostocombustivels < ActiveRecord::Migration
  def change
    create_table :postocombustivels do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :cep
      t.string :cnpj
      t.string :email
      t.string :mediacombustivel
      t.string :mediaatendimento
      t.string :mediapreco
      t.string :mediageral
      t.references :marca

      t.timestamps
    end
    add_index :postocombustivels, :marca_id
  end
end
