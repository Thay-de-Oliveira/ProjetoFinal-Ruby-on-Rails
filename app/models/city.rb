class City < ApplicationRecord
    # belongs_to = a Classe PERTENCE a próxima classe add (1 pra 1 = 1 cidade)
    belongs_to :state

end

