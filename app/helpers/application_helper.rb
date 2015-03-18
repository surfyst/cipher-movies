module ApplicationHelper

  def current_user
    User.find_by_auth_token(session[:user_token])
  end

end
