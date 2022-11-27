class App::Pages::Game::Board < Matestack::Ui::Page
  include Matestack::Ui::Bootstrap::Registry
  include App::Components::Registry

  def response
    bs_section_card do
      h2 'Toy Robot'
      paragraph 'A Toy Robot to play with'

      bs_row do
        bs_col xs: 10, md: 8 do
          game_board robot: robot
        end
        bs_col xs: 2, md: 4 do
          bs_row do
            bs_col xs: 12, md: 12 do
              controls
            end
          end
          bs_row do
            bs_col xs: 12, md: 12 do
              paragraph 'Click the buttons move the robot around the board.'
            end
          end
        end
      end
    end
  end

  def controls
    control_button :left, 'Turn left'
    control_button :move, 'Move'
    control_button :right, 'Turn right'
  end

  def control_button control_action, text
    action control_action_config(control_action) do
      bs_btn text: text, variant: 'primary', size: 'sm'
    end
  end

  def control_action_config control_action
    {
      method: :put,
      path: game_control_path(control_action),
      success: {
        emit: "success"
      }
    }
  end

  def self.robot
    @robot ||= ToyRobot::Robot.new
  end

  def robot
    self.class.robot
  end

  def self.ui_update
    ActionCable.server.broadcast 'matestack_ui_core',
      { event: 'update_robot_ui',
        x: robot.position.x,
        y: robot.position.y,
        facing: robot.facing,
      }
  end
end
