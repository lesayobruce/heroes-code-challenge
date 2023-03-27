class HeroPower < ApplicationRecord
   #hero power relations
    belongs_to :hero
    belongs_to :power
  end