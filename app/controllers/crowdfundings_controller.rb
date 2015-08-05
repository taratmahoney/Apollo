class CrowdfundingsController < ApplicationController

  def index
    @feedback = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

 private
 
end
