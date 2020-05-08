class PlayerStatsController < ApplicationController
    def index 
        playerstats = PlayerStat.all 
        render json: playerstats
    end 

    def show
        playerStat = PlayerStat.find(params[:id])
        render json: playerStat
    end 

    def create 
        playerStat = PlayerStat.create(playerStat_params)
        render json: playerStat
    end 

    def update 
        playerStat = PlayerStat.find(params[:id])
        playerStat.update(playerStat_params)
        render json: playerStat
    end

    def destroy 
        playerStat = PlayerStat.find(params[:id])
        playerStat.destroy
        render json: playerStat
    end 

    private

    def playerStat_params
        params.require(:PlayerStat).permit(:season, :player_id, :games_played, :mpg, :fgm, 
        :fga, :fgper, :three_pm, :three_pa, :three_per, :ftm, :fta, :ftper, :orpg, :drpg, :trpg, 
        :apg, :bpg, :spg, :ppg, :topg)
    end

end
