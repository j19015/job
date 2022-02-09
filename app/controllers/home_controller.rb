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
    render layout: false
  end
  
  def day_sort
    @company_info=CompanyInfo.where(user_id:current_user.id).where.not(finish_es_day: nil).order(:finish_es_day, :finish_test_day).page(params[:page]).per(10)
    render :table,layout: false
  end
  
end
