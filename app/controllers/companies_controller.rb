class CompaniesController < ApplicationController
    def new
        #Companyの空インスタンスを作成
        @company=Company.new
    end
    
    def index
       #indexページの呼び出しを行うためのaction
    end
    
    def search
        #@companyにワイルドカードを用いて検索結果を格納
        #paginateを用いて1ページに10個の情報が出るようにする
        @company=Company.where('name like ?',"%#{params[:name]}%").page(params[:page]).per(10)
    end
    
    def show
        #@companyに対して編集したいページの情報だけ格納
        @company=Company.find(params[:id])
        #@company_infoに対してもし編集したいページの情報が存在していたら格納
        @company_info=CompanyInfo.find_by(user_id: current_user.id,company_id: params[:id])
        #ない場合はからのインスタンスを作成しておく
        if @company_info.nil?
            #@company_infoにCompanyInfoのからのインスタンスを作成
            @company_info=CompanyInfo.new
        end
    end
    
    def new_info
        #編集した情報を保存する
        @companyinfo=CompanyInfo.new(info:params[:info])
        #送られてきたデータにはユーザの情報がないので、現在ログインしているユーザの情報を格納
        @companyinfo.user_id=current_user.id
        #会社のidをgetで取得
        @companyinfo.company_id=params[:id]
        #@company_infoの取得を試みる
        if @companyinfo.save
            #成功できたら編集成功をサクセスメッセージに入れておく
            flash[:notice]="編集成功"
            redirect_to company_path(@companyinfo.company_id)
        else
            #失敗しているのでエラーメッセージを表示するためにshow.html.erbを表示
            render :show
        end
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
    
    #登録されているCompanyInfoの情報を削除する
    def destroy
       #@companyに対して消したい行を格納
       @company=Company.find(params[:id])
       #消す
       @company.destroy
       #検索ページに戻る
       redirect_to company_search_path
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
