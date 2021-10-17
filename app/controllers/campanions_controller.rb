class CompanionsController < ApplicationController

    def new
        @companion=Companion.new
    end

    def create
        #byebug
        @companion=Companion.new(companion_params)
        Companion.create(user_id:@companion.user_id,buddy:@companion.buddy)
        Companion.create(user_id:@companion.buddy,buddy:@companion.user_id)
        # if @companion.save
             flash[:notice]="New Friend Added"
             #byebug
              @friend=Friend.find_by(id:@companion.dummy)
              @friend.destroy
              redirect_to companions_path
        # else
        #     flash.now[:alert]="Fill correct details"
        #     render 'new'
        # end
    end

    def companion_params
        params.require(:companion).permit(:user_id,:buddy,:dummy)
    end

    def index
        @companions=current_user.companions
    end

end