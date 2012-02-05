class MainController < ApplicationController
  
  def index
    @acronyms = Acronym.all
  end
  
  def show    
    #@acronym = Acronym.where("name = ?", params[id])
    #@acronym = Acronym.find(params[:id])
    @acronyms = Acronym.where("name LIKE ?", "#{params[:name]}%")
    logger.debug {"results = " + @acronyms.inspect} 
    
    respond_to do |format|
      format.html 
      format.json { render json: @acronyms }
    end
  end

end
