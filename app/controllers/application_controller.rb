class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  before_filter :check_browser

  private

    Browser = Struct.new(:browser, :version)

    SupportedBrowsers = [
      Browser.new('Safari', '6.0.2'),
      Browser.new('Firefox', '19.0.2'),
      Browser.new('Internet Explorer', '9.0'),
      Browser.new('Chrome', '25.0.1364.160')
    ]

    def check_browser
      user_agent = UserAgent.parse(request.user_agent)
      unless SupportedBrowsers.detect { |browser| user_agent >= browser }
        render text: 'Your browser is not supported!'
      end
    end
end
