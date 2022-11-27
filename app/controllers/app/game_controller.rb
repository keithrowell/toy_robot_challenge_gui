class App::GameController < App::BaseController

  matestack_app App::Main

  def board
    render App::Pages::Game::Board
  end

  def control
    conttrol_action = params[:control_action]
    case conttrol_action
    when 'left'
      App::Pages::Game::Board.robot.turn :left
    when 'right'
      App::Pages::Game::Board.robot.turn :right
    when 'move'
      App::Pages::Game::Board.robot.move
    end
    App::Pages::Game::Board.ui_update
  end

end
