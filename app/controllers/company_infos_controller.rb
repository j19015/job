class CompanyInfosController < ApplicationController
    def create
        @company_info=CompanyInfo.new(companyinfo_params)
        @company_info.user_id=current_user.id
        @company_info.company_id=params[:company_id]
         if @company_info.save
             flash[:notice]="新規入力完了"
             redirect_to company_path(@company_info.company_id)
         else
             logger.debug(@company_info.errors.full_messages)
             redirect_to company_path(@company_info.company_id)
         end
    end
    
    def update
        @company_info=CompanyInfo.find(params[:id])
        logger.debug(companyinfo_params)
        logger.debug(@company_info)
        if @company_info.update(companyinfo_params)
            flash[:notice]="編集成功"
            redirect_to company_path(@company_info.company_id)
        else
            @company=@company_info.company
            render 'companies/show'
        end
    end
    
    def companyinfo_params
        #送られてきた値を得る
        params.require(:company_info).permit(:people, :capital, :fast_money, :avg_money, :selection, :hp, :intern_id, :intern_pass, :test, :finish_es_day, :finish_test_day, :info)
    end
end
