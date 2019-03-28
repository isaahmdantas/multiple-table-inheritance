class Medicamento < Produto
    ## multi tables inheritances
    has_one :medicamento, class_name: "Inheritances::Medicamento", dependent: :destroy, autosave: true
    accepts_nested_attributes_for :medicamento
    delegate :bula, :bula=,
            to: :lazily_built_medicamento
    default_scope -> { 
      joins("INNER JOIN medicamentos ON insumos.id = medicamentos.medicamento_id") 
    }
    def medicamento_id
      self.medicamento.id
    end
    ## end multi tables inheritances

    private
      ## multi tables inheritances
      def lazily_built_medicamento
          medicamento || build_medicamento
      end
      ## end multi tables inheritances
    
end