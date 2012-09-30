class MainMenuItemsController < ApplicationController
  # GET /main_menu_items
  # GET /main_menu_items.json
  def index
    @main_menu_items = MainMenuItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_menu_items }
    end
  end

  # GET /main_menu_items/1
  # GET /main_menu_items/1.json
  def show
    @main_menu_item = MainMenuItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_menu_item }
    end
  end

  # GET /main_menu_items/new
  # GET /main_menu_items/new.json
  def new
    @main_menu_item = MainMenuItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_menu_item }
    end
  end

  # GET /main_menu_items/1/edit
  def edit
    @main_menu_item = MainMenuItem.find(params[:id])
  end

  # POST /main_menu_items
  # POST /main_menu_items.json
  def create
    @main_menu_item = MainMenuItem.new(params[:main_menu_item])

    respond_to do |format|
      if @main_menu_item.save
        format.html { redirect_to @main_menu_item, notice: 'Main menu item was successfully created.' }
        format.json { render json: @main_menu_item, status: :created, location: @main_menu_item }
      else
        format.html { render action: "new" }
        format.json { render json: @main_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_menu_items/1
  # PUT /main_menu_items/1.json
  def update
    @main_menu_item = MainMenuItem.find(params[:id])

    respond_to do |format|
      if @main_menu_item.update_attributes(params[:main_menu_item])
        format.html { redirect_to @main_menu_item, notice: 'Main menu item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_menu_items/1
  # DELETE /main_menu_items/1.json
  def destroy
    @main_menu_item = MainMenuItem.find(params[:id])
    @main_menu_item.destroy

    respond_to do |format|
      format.html { redirect_to main_menu_items_url }
      format.json { head :no_content }
    end
  end
end
