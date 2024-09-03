module ApplicationHelper

    def current_user
          
       @current_user ||= User.find(session[:user_id]) if session[:user_id]
      
    # The ||= operator means “assign the right side value to @current_user only if @current_user is nil or false.” It helps to avoid repeatedly querying the database for the same user.

    end

    def logged_in?
       !!current_user
    end
end




# module ApplicationHelper

#     # def gravatar_for(user, options = { size : 80})
#     #     email_address = user.email.downcase
#     #     hash = Digest::MD5.hexdigest(email_address)
#     #     size = options[:size]
#     #     gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
#     #     image_tag(gravatar_url, alt: user.username)
#     # end
# end
