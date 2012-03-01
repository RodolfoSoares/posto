class CreateCombustivels < ActiveRecord::Migration
  def change
    create_table :combustivels do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
