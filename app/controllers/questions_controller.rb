class QuestionsController < ApplicationController
  
  def index
    @question = Question.new
    @answer_options = [AnswerOption.new,AnswerOption.new,AnswerOption.new] 
    
  end
  
  def create
    question = Question.create! params[:question]
    answer_option_1 = question.answer_options.build :name => params[:answer_option_1] unless params[:answer_option_1].blank?
    answer_option_2 = question.answer_options.build :name => params[:answer_option_2] unless params[:answer_option_2].blank?
    answer_option_3 = question.answer_options.build :name => params[:answer_option_3] unless params[:answer_option_3].blank?
    
    answer_option_1.save! if answer_option_1
    answer_option_2.save! if answer_option_2
    answer_option_3.save! if answer_option_3
    
    
    redirect_to question_url(question)
  end
  
  def show
    @question = Question.find(params[:id])
  end
  
end
