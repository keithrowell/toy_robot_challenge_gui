module App::Components::Registry

  def game_board text=nil, options=nil, &block
    App::Components::Game::Board.(text, options, &block)
  end

end
