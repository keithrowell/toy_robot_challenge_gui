class App::Config
  include ActiveSupport::Configurable

  # allow redirect of App::Config.config.some_method to App::Config.some_method
  def self.method_missing method_name, *args, &block
    if self.config[method_name].present?
      self.config[method_name]
    else
      super
    end
  end
end

App::Config.configure do |config|
  config.colors = {
    primary: '#262A32',
    secondary: '#E29559',
    success: '#8BD992',
    info: '#5BC0DE',
    warning: '#F0AD4E',
  }
end