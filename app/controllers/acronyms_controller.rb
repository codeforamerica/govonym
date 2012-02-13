class AcronymsController < ApplicationController
  # GET /acronyms
  # GET /acronyms.json
  def index
    @acronyms = Acronym.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acronyms }
    end
  end

  # GET /acronyms/1
  # GET /acronyms/1.json
  def show
    @acronym = Acronym.find(params[:id])    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acronym }
    end
  end

  # GET /acronyms/new
  # GET /acronyms/new.json
  def new
    @acronym = Acronym.new
    3.times { @acronym.definitions.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acronym }
    end
  end

  # GET /acronyms/1/edit
  def edit
    @acronym = Acronym.find(params[:id])
  end

  # POST /acronyms
  # POST /acronyms.json
  def create
    @acronym = Acronym.new(params[:acronym])

    respond_to do |format|
      if @acronym.save
        format.html { redirect_to @acronym, notice: 'Acronym was successfully created.' }
        format.json { render json: @acronym, status: :created, location: @acronym }
      else
        format.html { render action: "new" }
        format.json { render json: @acronym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acronyms/1
  # PUT /acronyms/1.json
  def update
    @acronym = Acronym.find(params[:id])

    respond_to do |format|
      if @acronym.update_attributes(params[:acronym])
        format.html { redirect_to @acronym, notice: 'Acronym was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @acronym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acronyms/1
  # DELETE /acronyms/1.json
  def destroy
    @acronym = Acronym.find(params[:id])
    @acronym.destroy

    respond_to do |format|
      format.html { redirect_to acronyms_url }
      format.json { head :ok }
    end
  end
end
