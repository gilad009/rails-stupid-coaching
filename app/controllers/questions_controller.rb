# The `always_true` style enforces that the frozen string literal
# comment is set to `true`. This is a stricter option than `always`
# and forces projects to use frozen string literals.
# bad
# frozen_string_literal: false
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @answers = if params[:answer].include?('?')
                 @answers[1]
               elsif params[:answer] == 'I am going to work'
                 @answers[0]
               else
                 @answers[2]
               end
  end
end
