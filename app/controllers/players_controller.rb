class PlayersController < ApplicationController

    def index 
        players = Player.all 
        render json: players
    end 

    def show
        player = Player.find(params[:id])
        render json: player
    end 

    def create 
        player = Player.create(player_params)
        render json: player
    end 

    def update 
        player = Player.find(params[:id])
        player.update(player_params)
        render json: player
    end

    def destroy 
        player = Player.find(params[:id])
        player.destroy
        render json: player
    end 

    private

    def player_params
        params.require(:Player).permit(:team_id, :name, :height, :position, :weight, :img, :number)
    end

end
