class Inheritances::Medicamento < ApplicationRecord   


    belongs_to :medicamento,optional: true
    validates :medicamento, presence: true 
   
    def produto
        Produto.find(medicamento_id)
    end
    

    def text 
        "#{produto.try(:nome)}"
    end

end
