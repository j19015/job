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
  
  def rally
    @event = Event.all #データベースから集会所の情報を取得する @変数 = view名.all
  end
  
  def event
  end
  
  def table
    @company_info=CompanyInfo.where(user_id:current_user.id).page(params[:page]).per(11)
    #render layout: false
  end
end
