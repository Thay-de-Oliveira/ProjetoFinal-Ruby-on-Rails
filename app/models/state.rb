class State < ApplicationRecord
    # has_many = a Classe pertence a várias outras (1 estado para muitas citys)(1 pra muitos)
    has_many :cities
end
