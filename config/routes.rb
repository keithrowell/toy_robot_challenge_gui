Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: redirect('/board')

  get '/board' => 'app/game#board'
  get '/instructions' => 'app/game#instructions'

  put '/game/control/:control_action' => 'app/game#control', as: :game_control

end
