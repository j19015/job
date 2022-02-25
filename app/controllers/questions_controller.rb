class QuestionsController < ApplicationController
    before_action :authenticate_user!,only: [:new, :create, :destroy]
    def index
        @question=Question.all.order(created_at: "DESC").page(params[:page]).per(10)
    end
    
    def search_index
        @question=Question.where(question_kind: params[:kind]).order(created_at: "DESC").page(params[:page]).per(10)
        render :index
    end
    
    def new
        @question=Question.new
    end
    
    def create
        @question=Question.new(question_params)
        if @question.save
            redirect_to questions_path
        else
            render :new
        end
    end
    
    def destroy
        @question=Question.find(params[:id])
        @question.destroy
        redirect_to questions_path
    end
    
    
    def question_params
        #送られてきた値を得る
        params.require(:question).permit(:question, :question_kind)
    end
end
