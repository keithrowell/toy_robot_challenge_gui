class App::Main < Matestack::Ui::App
  include Matestack::Ui::Bootstrap::Registry
  include Components::Registry
  include App::Components::Registry

  def response &block
    matestack do
      async id: 'app-layout' do
        bs_container class: 'm-15 px-4 pt-15' do
          yield if block_given?
        end
      end
    end
  end

end
