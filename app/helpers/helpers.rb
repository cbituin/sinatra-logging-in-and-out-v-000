class Helpers

  def self.current_user(session)
    @current_user = User.find(session[:user_id])
    @current_user
  end

  def self.is_logged_in?(session)
    binding.pry
    @current_user.id == session[:user_id]
  end

end
