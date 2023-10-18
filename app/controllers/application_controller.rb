class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def favicon
  #   send_file Rails.root.join('public/favicon.ico'), type: 'image/x-icon', disposition: 'inline'
  # end
end
