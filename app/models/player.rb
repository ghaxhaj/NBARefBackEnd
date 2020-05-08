class Player < ApplicationRecord
    belongs_to :team 
    has_one :player_stat
end
