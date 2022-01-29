class MypagesController < ApplicationController
    def top
        if current_user
            redirect_to :mypage
        end
    end
    
    def mypage
        
    end
    
    def user_edit
        @user_info = User.find(params[:id])
        if @user_info.update(user_params)#DB名_パラメータでupdateの判定
            flash[:notice]="編集成功"
            redirect_to user_path(@user_info.user_id)
        else
            render :top
        end
    end
    
    def user_comopany
        @user_comopany = CompanyInfo.find(params[:id])
    end
    
    def user_params
        #送られてきた値（GET、POST）を得る
        params.require(:user_info).permit(:info)
    end
end
