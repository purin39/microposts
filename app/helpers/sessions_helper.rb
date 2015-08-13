module SessionsHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
  
    def logged_id?
        !!current_user
    end
  
    def store_location
        session[:forwarding_url] = repuest.url if request.get?
    end
end