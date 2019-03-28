class Equipamento < Insumo
    ## multi tables inheritances
    has_one :equipamento, class_name: "Inheritances::Equipamento", dependent: :destroy, autosave: true
    accepts_nested_attributes_for :equipamento
    delegate :tombamento, :tombamento=,
            :modelo, :modelo=,
            :marca, :marca=,
            :serie, :serie=,
            :tombado, :tombado=,
            to: :lazily_built_equipamento
    default_scope -> { 
        joins("INNER JOIN equipamentos ON insumos.id = equipamentos.equipamento_id") 
    }
    def equipamento_id
        self.equipamento.id
    end
    ## end multi tables inheritances

    private
        ## multi tables inheritances
        def lazily_built_equipamento
            equipamento || build_equipamento
        end
        ## end multi tables inheritances
    
end