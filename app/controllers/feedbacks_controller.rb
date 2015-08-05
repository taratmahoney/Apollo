class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
    @feedback.options.build
  end

  
end
