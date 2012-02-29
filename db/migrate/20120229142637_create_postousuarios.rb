class CreatePostousuarios < ActiveRecord::Migration
  def change
    create_table :postousuarios do |t|
      t.string :notaatendimento
      t.string :notageral
      t.references :usuario
      t.references :postocombustivel

      t.timestamps
    end
    add_index :postousuarios, :usuario_id
    add_index :postousuarios, :postocombustivel_id
  end
end
