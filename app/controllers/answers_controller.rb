class AnswersController < ApplicationController
  def create
    question = Question.find(params[:answer][:question_id])
    question.answers.create(answer_params)
    session[:current_user_email] = params[:answer][:email]
    redirect_to question
  end

  def answer_params
    params.require(:answer).permit(:email, :body)
  end
end
