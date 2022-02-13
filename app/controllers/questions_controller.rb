class QuestionsController < ApplicationController
    def index
        @question=Question.all.page(params[:page]).per(10)
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
