class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.references :produto, foreign_key: {to_table: :insumos}
      t.string :categoria
      t.timestamps
    end
  end
end
