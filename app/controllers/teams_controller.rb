class TeamsController < ApplicationController

    def index 
        teams = Team.all 

        render json: teams.to_json(
            :include => {
                :players => {:only => [:id, :name, :height, :position, :weight, :img, :number]},
                :team_stat => {:only => [:season, :ppg, :papg, :rpg, :apg, :spg, :bpg, :topg, :fgper, :threefgper, :ftper, :efgper]}
            }
        )
    end 

    def show
        team = Team.find(params[:id])
        render json: team.to_json(
            :include => {
                :players=> {:only => [:name, :height, :position, :weight, :img, :number]},
                :team_stat => {:only => [:season, :ppg, :papg, :rpg, :apg, :spg, :bpg, :topg, :fgper, :threefgper, :ftper, :efgper]}
            }
        )
    end 

    def create 
        team = Team.create(team_params)
        render json: team
    end 

    def update 
        team = Team.find(params[:id])
        team.update(team_params)
        render json: team
    end

    def destroy 
        team = Team.find(params[:id])
        team.destroy
        render json: team

    end 

    private

    def team_params
        params.require(:team).permit(:abbreviation, :city, :conference, :division, :name, :img)
    end


end
