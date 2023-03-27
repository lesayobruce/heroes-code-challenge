class HeroPower < ApplicationRecord
   #hero power relations
    belongs_to :hero
    belongs_to :power

    validates :description, presence: true
    validates :description, length: { minimum: 20 }
  end