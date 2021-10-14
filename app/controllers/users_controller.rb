class UsersController < ApplicationController
    # before_action :require_user, only: [ :show,:edit, :update]
     #before_action :require_same_user, only: [:edit, :update]
       def index
         @users= user.paginate(page: params[:page], per_page: 5)
       end
       def search
        @query=params[:query]
        @users=User.where("email LIKE ?",["%#{@query}%"])
        @users= @users.order('users.created_at DESC')
        end
       def show
         @user=User.find(params[:id])
         @posts=@user.posts.paginate(page: params[:page], per_page: 5)
       end
   
       def edit
           @user=User.find(params[:id])
       end
   
       def require_same_blogger
         if current_user != @user
           flash[:alert] = "You can only edit your own account"
             redirect_to @user
         end
       end 
   end