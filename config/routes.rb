Rails.application.routes.draw do
  resources :player_stats
  resources :team_stats
  resources :players
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
