require_relative 'base_view'

class SessionsView < BaseView

  def successful_login
    puts "You are now successfully logged in"
  end

  def wrong_credentials
    puts "Wrong credentials, please try again!"
  end

end
