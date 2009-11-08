class AnswersController < ApplicationController
  
  def index
    
    @question = Question.find(:all).last
    @already_answered = session[:answered_questions].include? @question.id
      
    @answer = Answer.new
    
  end

  def create
    answer_option = AnswerOption.find(params[:answer_option_id])
    
    answer_option.answers.create!
    session[:answered_questions] << answer_option.question.id
    
    redirect_to answers_url
  end
end
