class EventsForm < ApplicationRecord
    # has_many = a Classe pertence a várias outras
    has_many :service
end
