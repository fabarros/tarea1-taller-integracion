Rails.application.routes.draw do
  get 'index/', to: "index#index" 
  get 'bettercallsaul/:season', to: "bettercallsaul#season", as: "bettercallsaul_season"
  get 'bettercallsaul/:season/:episode', to: "bettercallsaul#episode", as: "bettercallsaul_episode"
  #get 'bettercallsaul/character', to:
  get 'breakingbad/:season', to: "breakingbad#season", as: "breakingbad_season"
  get 'breakingbad/:season/:episode', to: "breakingbad#episode", as: "breakingbad_episode"
  #get 'breakingbad/character', to:
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
