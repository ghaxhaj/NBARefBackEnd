class Team < ApplicationRecord
    has_many :players
    has_one :team_stat
end
