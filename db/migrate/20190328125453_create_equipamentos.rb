class CreateEquipamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :equipamentos do |t|
      t.references :equipamento, foreign_key: {to_table: :insumos}
      t.boolean :tombado
      t.string :tombamento
      t.string :modelo
      t.string :marca
      t.string :serie

      t.timestamps
    end
  end
end
