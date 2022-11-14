class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
# Rails conventionnally renders the template named action_name.html.erb in app/views/controller_name.

# It thus means you forgot to generate the action’s associated view, that you misspelled its filename, or that you misplaced it.
