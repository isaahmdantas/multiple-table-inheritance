class Inheritances::Equipamento < ApplicationRecord   
    belongs_to :equipamento,optional: true
    validates :equipamento, presence: true 
   
    def insumo
        Insumo.find(equipamento_id)
    end
    

    def text 
        "#{insumo.try(:nome)}"
    end

end
