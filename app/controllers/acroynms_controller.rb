class AcroynmsController < ApplicationController
  # GET /acroynms
  # GET /acroynms.json
  def index
    @acroynms = Acroynm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acroynms }
    end
  end

  # GET /acroynms/1
  # GET /acroynms/1.json
  def show
    @acroynm = Acroynm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acroynm }
    end
  end

  # GET /acroynms/new
  # GET /acroynms/new.json
  def new
    @acroynm = Acroynm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acroynm }
    end
  end

  # GET /acroynms/1/edit
  def edit
    @acroynm = Acroynm.find(params[:id])
  end

  # POST /acroynms
  # POST /acroynms.json
  def create
    @acroynm = Acroynm.new(params[:acroynm])

    respond_to do |format|
      if @acroynm.save
        format.html { redirect_to @acroynm, notice: 'Acroynm was successfully created.' }
        format.json { render json: @acroynm, status: :created, location: @acroynm }
      else
        format.html { render action: "new" }
        format.json { render json: @acroynm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acroynms/1
  # PUT /acroynms/1.json
  def update
    @acroynm = Acroynm.find(params[:id])

    respond_to do |format|
      if @acroynm.update_attributes(params[:acroynm])
        format.html { redirect_to @acroynm, notice: 'Acroynm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @acroynm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acroynms/1
  # DELETE /acroynms/1.json
  def destroy
    @acroynm = Acroynm.find(params[:id])
    @acroynm.destroy

    respond_to do |format|
      format.html { redirect_to acroynms_url }
      format.json { head :ok }
    end
  end
end
