class AnswersController < ApplicationController
  def create
    question = Question.find(params[:answer][:question_id])
    answer = question.answers.create(answer_params)

    MainMailer.notify_question_author(answer).deliver_now

    session[:current_user_email] = params[:answer][:email]
    redirect_to question
  end

  def answer_params
    params.require(:answer).permit(:email, :body)
  end
end
