module SessionsHelper
  def log_in user
    session[:user_id] = user.id
  end

<<<<<<< HEAD
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
=======
  def remember user
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    if user_id = session[:user_id]
      @current_user ||= User.find_by id: user_id
       elsif user_id = cookies.signed[:user_id]
      user = User.find_by id: user_id
  
if user&.authenticated? cookies[:remember_token]
        log_in user
        @current_user = user
      end
    end
>>>>>>> 473bc6f23e8075a7e3ce7338cea9559cbc67468b
  end

  def logged_in?
    current_user.present?
  end

<<<<<<< HEAD
  def log_out
=======
    def forget user
    user.forget
    cookies.delete :user_id
    cookies.delete :remember_token
  end

  def log_out
    forget current_user
>>>>>>> 473bc6f23e8075a7e3ce7338cea9559cbc67468b
    session.delete(:user_id)
    @current_user = nil
  end
end
