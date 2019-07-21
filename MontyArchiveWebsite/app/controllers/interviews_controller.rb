class InterviewsController < ApplicationController

  def index
	@interviews = Interview.all
  end
  
  def show
	@interview = Interview.find(params[:id])
  end
  
  def new
	
  end
  
  def create
	@interview = Interview.new(interview_params)
	
	@interview.save
	redirect_to @interview
  end
  
  private
	def interview_params
		params.require(:interview).permit(:title, :description)
	end
end
