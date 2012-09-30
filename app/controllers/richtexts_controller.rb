class RichtextsController < ApplicationController
  # GET /richtexts
  # GET /richtexts.json
  def index
    @richtexts = Richtext.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @richtexts }
    end
  end

  # GET /richtexts/1
  # GET /richtexts/1.json
  def show
    @richtext = Richtext.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @richtext }
    end
  end

  # GET /richtexts/new
  # GET /richtexts/new.json
  def new
    @richtext = Richtext.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @richtext }
    end
  end

  # GET /richtexts/1/edit
  def edit
    @richtext = Richtext.find(params[:id])
  end

  # POST /richtexts
  # POST /richtexts.json
  def create
    @richtext = Richtext.new(params[:richtext])

    respond_to do |format|
      if @richtext.save
        format.html { redirect_to @richtext, notice: 'Richtext was successfully created.' }
        format.json { render json: @richtext, status: :created, location: @richtext }
      else
        format.html { render action: "new" }
        format.json { render json: @richtext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /richtexts/1
  # PUT /richtexts/1.json
  def update
    @richtext = Richtext.find(params[:id])

    respond_to do |format|
      if @richtext.update_attributes(params[:richtext])
        format.html { redirect_to @richtext, notice: 'Richtext was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @richtext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /richtexts/1
  # DELETE /richtexts/1.json
  def destroy
    @richtext = Richtext.find(params[:id])
    @richtext.destroy

    respond_to do |format|
      format.html { redirect_to richtexts_url }
      format.json { head :no_content }
    end
  end
end
