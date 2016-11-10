module SessionsHelper
	
	#log in 
	def log_in(user)
		session[:user_id] = user.id
	end

	# back to stored location
	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default )
		session.delete(:forwarding_url)
	end

	#store url try to access
	def store_location
		session[:forwarding_url] = request.url if request.get?
	end
	
	#return true if current user is given user
	def current_user?(user)
		user == current_user
	end

	#return current user logged in if has any.
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#return true if user is logged
	def logged_in?
		!current_user.nil?
	end

	#Logs out 
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
