Rails.application.routes.draw do
  get '/', to: "index#index"
  get 'index/', to: "index#index", as: "index"
  patch 'index_search/', to: "index#index_search", as: "index_search"
  get 'index_search/', to: "index#index_search_view", as: "index_search_get"
  get 'bettercallsaul/:season', to: "bettercallsaul#season", as: "bettercallsaul_season"
  get 'bettercallsaul/season/:episode', to: "bettercallsaul#episode", as: "bettercallsaul_episode"
  get 'bettercallsaul/character/:name', to: "bettercallsaul#character", as: "bettercallsaul_character"
  get 'breakingbad/:season', to: "breakingbad#season", as: "breakingbad_season"
  get 'breakingbad/season/:episode', to: "breakingbad#episode", as: "breakingbad_episode"
  get 'breakingbad/character/:name', to: "breakingbad#character", as: "breakingbad_character"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
