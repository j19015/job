class MypagesController < ApplicationController
    def index
    end
    
    def create
    end
    
    def new
    end

    def mypages
        @user = User.find_by(user_id: params[:id])
    end
    
    def edit
    end
    
    def user_edit
        @user_info = User.find(params[:id])
        if @user_info.update(user_params)#DB名_パラメータでupdateの判定
            flash[:notice]="編集成功"
            redirect_to user_path(@user_info.user_id)
        else
            render :index
        end
    end
    
    def show
        @company_info = CompanyInfo.find_by(user_id: current_user.id, company_id: params[:id])
        if @company_info.nil?
            @company_info=CompanyInfo.new
        end
    end

    #ストロングパラメータ
    private
    def user_params
        #送られてきた値（GET、POST）を得る
        params.require(:company_info).permit(:info)
    end
    
end
