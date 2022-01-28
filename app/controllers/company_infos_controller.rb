class CompanyInfosController < ApplicationController
    def create
        @company_info=CompanyInfo.new
        @company_info.info=companyinfo_params[:info]
        @company_info.user_id=current_user.id
        @company_info.company_id=params[:company_id]
         if @company_info.save
             redirect_to company_path(@company_info.company_id)
         else
             @company=@company_info.company
            render 'companies/show'
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
        params.require(:company_info).permit(:info)
    end
end
