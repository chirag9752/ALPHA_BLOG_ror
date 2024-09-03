class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    def current_user
          
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
       
     # The ||= operator means “assign the right side value to @current_user only if @current_user is nil or false.” It helps to avoid repeatedly querying the database for the same user.
 
     end

     def logged_in?
        !!current_user                # convert a value to boolean values
     end

end



# In Ruby on Rails, helper_method is a method provided by Rails to make methods defined in your controllers available in your views

# Why Use helper_method?   *********************************************

# # Access Control Across Views:
                            #    By default, methods defined in controllers are not available in views. If you want to 
# use a controller method in your views, you need to use helper_method. In your example, the current_user method is defined 
# in the ApplicationController, and by calling helper_method :current_user, you're making current_user available in all views 
# rendered by the controllers that inherit from ApplicationController.

# # DRY Principle: 
                #  If multiple controllers need access to the current_user method, defining it in ApplicationController and 
                # making it a helper method ensures that it’s available across your entire application without having to 
                # redefine it in each controller or helper.

# #How Does helper_method Work?

# Defining the Method: 
                    #  When you define a method in a controller, it's only available in the controller actions. For instance, 
# if you define current_user in ApplicationController without helper_method, you could use it in any method within 
#     ApplicationController or its subclasses, but not in the views.

# # Making the Method Available in Views: 
                                #    By calling helper_method :current_user, Rails adds this method to the helper module 
# for your views. This means you can call current_user directly in your view templates, which allows you to use this method 
# for rendering user-specific content, checking user authentication status, etc.