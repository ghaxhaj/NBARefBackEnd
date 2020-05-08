class TeamStatsController < ApplicationController

    def index 
        teamStats = TeamStat.all 
        render json: teamStats
    end 

    def show
        teamStat = TeamStat.find(params[:id])
        render json: teamStat
    end 

    def create 
        teamStat = TeamStat.create(teamStat_params)
        render json: teamStat
    end 

    def update 
        teamStat = TeamStat.find(params[:id])
        teamStat.update(teamStat_params)
        render json: teamStat
    end

    def destroy 
        teamStat = TeamStat.find(params[:id])
        teamStat.destroy
        render json: teamStat

    end 

    private

    def team_params
        params.require(:TeamStat).permit(:season, :team_id, :ppg, :papg, :rpg, :apg, :spg, :bpg, :topg, :fgper, :threefgper, :ftper, :efgper)
    end
end
