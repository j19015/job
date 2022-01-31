class CompaniesController < ApplicationController
    def new
        #Companyの空インスタンスを作成
        @company=Company.new
    end
    
    def index
       
    end
    
    def search
        @company=Company.where('name like ?',"%#{params[:name]}%").page(params[:page]).per(10)
        #render :index
    end
    
    def show
        @company=Company.find(params[:id])
        @company_info=CompanyInfo.find_by(user_id: current_user.id,company_id: params[:id])
        if @company_info.nil?
            @company_info=CompanyInfo.new
        end
    end
    
    def new_info
        @companyinfo=CompanyInfo.new(info:params[:info])
        @companyinfo.user_id=current_user.id
        @companyinfo.company_id=params[:id]
        if @companyinfo.save
            flash[:notice]="編集成功"
            redirect_to company_path(@companyinfo.company_id)
        else
            render :show
        end
    end
    
    def edit_info
        
    end
    
    def create
        #Companyにpostで得た値を挿入
        @company= Company.new(company_params)
        #@companyでsaveできるのか確認
        if @company.save
            #成功したのでフラッシュメッセージを追加してindexビューを表示
            flash[:notice]="登録成功"
            redirect_to companies_path
        else
            #newビューを表示する
            render :new
        end
    end
    
    def update
        
    end
    
    def edit
        
    end
    
    private
    
    def company_params
        #送られてきた値を得る
        params.require(:company).permit(:name, :kind)
    end
    
    def companyinfo_params
        #送られてきた値を得る
        params.require(:companyinfo).permit(:info)
    end
end
