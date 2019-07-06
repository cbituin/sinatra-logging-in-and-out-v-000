class Helpers

  def self.current_user(session)
    @current_user = User.find(session[:user_id])
    @current_user
  end

  def self.is_logged_in?(session)
    @current_user = User.find(session[:username])
    @current_user.user_id == session[:user_id]
  end

end
