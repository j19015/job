class HomeController < ApplicationController
  def top
    if current_user
      redirect_to home_about_path
    end
  end
  
  def about
  end
  
  def manual
  end
  
  def table
    @company_info=CompanyInfo.where(user_id:current_user.id).page(params[:page]).per(10)
    @day=CompanyInfo.new
    render layout: false
  end
end
