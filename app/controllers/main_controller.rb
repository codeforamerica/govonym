class MainController < ApplicationController
  
  def index
    @acronyms = Acronym.all
  end
  
  def show    
    @acronyms = Acronym.where("name LIKE ?", "#{params[:name]}%")
    logger.debug {"results = " + @acronyms.inspect} 
    
    respond_to do |format|
      format.html 
      format.json { render json: @acronyms }
    end
  end

end
