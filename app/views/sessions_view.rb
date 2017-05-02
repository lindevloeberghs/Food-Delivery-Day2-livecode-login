class SessionsView < BaseView

  def wrong_credentials
    puts "You have entered the wrong credentials, please try again!"
  end

  def successful_login
    puts "You are logged in successfully now..."
  end

end
