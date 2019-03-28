class CreateInsumos < ActiveRecord::Migration[5.2]
  def change
    create_table :insumos do |t|
      t.string :codigo
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
