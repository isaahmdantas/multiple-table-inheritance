class Inheritances::Produto < ApplicationRecord   


    belongs_to :produto,optional: true
    validates :produto, presence: true 
   
    def insumo
        Insumo.find(produto_id)
    end
    

    def text 
        "#{insumo.try(:nome)}"
    end

end
