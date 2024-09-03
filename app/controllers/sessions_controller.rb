class SessionsController < ApplicationController
  
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
           flash[:notice] = "Logged in successfully"
           redirect_to articles_path
        else
            flash.now[:alert] = "There was something wrong with your login details"  
            # here we use flash.now because we are not redirecting to new page we are on previous page only tha's why
            # flash: Message for the next request.
            # flash.now: Message for the current request.
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end

end



# sessions 

# Your application has a session for each user in which you can store small amounts of data that 
# will be persisted between requests. The session is only available in the controller and the view 
# and can use one of several of different storage mechanisms:

# All session stores use a cookie to store a unique ID for each session 
# (you must use a cookie, Rails will not allow you to pass the session ID in the 
# URL as this is less secure).

# The cookie data is cryptographically signed to make it tamper-proof. And it is also encrypted so 
# anyone with access to it can't read its contents. (Rails will not accept it if it has been edited).

