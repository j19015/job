class HomeController < ApplicationController
  def top
    if current_user
      redirect_to home_about_path
    end
  end
  
  def about
  end
end
