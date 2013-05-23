class PorfoliosController < ApplicationController
  # GET /porfolios
  # GET /porfolios.json
  def index
    @porfolios = Porfolio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @porfolios }
    end
  end

  # GET /porfolios/1
  # GET /porfolios/1.json
  def show
    @porfolio = Porfolio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @porfolio }
    end
  end

  # GET /porfolios/new
  # GET /porfolios/new.json
  def new
    @porfolio = Porfolio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @porfolio }
    end
  end

  # GET /porfolios/1/edit
  def edit
    @porfolio = Porfolio.find(params[:id])
  end

  # POST /porfolios
  # POST /porfolios.json
  def create
    @porfolio = Porfolio.new(params[:porfolio])

    respond_to do |format|
      if @porfolio.save
        format.html { redirect_to @porfolio, notice: 'Porfolio was successfully created.' }
        format.json { render json: @porfolio, status: :created, location: @porfolio }
      else
        format.html { render action: "new" }
        format.json { render json: @porfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /porfolios/1
  # PUT /porfolios/1.json
  def update
    @porfolio = Porfolio.find(params[:id])

    respond_to do |format|
      if @porfolio.update_attributes(params[:porfolio])
        format.html { redirect_to @porfolio, notice: 'Porfolio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @porfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porfolios/1
  # DELETE /porfolios/1.json
  def destroy
    @porfolio = Porfolio.find(params[:id])
    @porfolio.destroy

    respond_to do |format|
      format.html { redirect_to porfolios_url }
      format.json { head :no_content }
    end
  end
end
