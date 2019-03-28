class Produto < Insumo
    ## multi tables inheritances
    has_one :produto, class_name: "Inheritances::Produto", dependent: :destroy, autosave: true
    accepts_nested_attributes_for :produto
    delegate :categoria, :categoria=,
            to: :lazily_built_produto
    default_scope -> { 
        joins("INNER JOIN produtos ON insumos.id = produtos.produto_id") 
    }
    def produto_id
        self.produto.id
    end
    ## end multi tables inheritances

    private
        ## multi tables inheritances
        def lazily_built_produto
            produto || build_produto
        end
        ## end multi tables inheritances
    
end