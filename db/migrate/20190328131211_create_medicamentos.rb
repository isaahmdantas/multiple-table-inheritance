class CreateMedicamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicamentos do |t|
      t.references :medicamento, foreign_key: {to_table: :insumos}
      t.text :bula

      t.timestamps
    end
  end
end
