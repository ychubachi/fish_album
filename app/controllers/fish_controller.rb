class FishController < ApplicationController
  # GET /fish
  # GET /fish.json
  def index
    @fish = Fish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fish }
    end
  end

  # GET /fish/1
  # GET /fish/1.json
  def show
    @fish = Fish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fish }
    end
  end

  # GET /fish/new
  # GET /fish/new.json
  def new
    @fish = Fish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fish }
    end
  end

  # GET /fish/1/edit
  def edit
    @fish = Fish.find(params[:id])
  end

  # POST /fish
  # POST /fish.json
  def create
    @fish = Fish.new(params[:fish])

    respond_to do |format|
      if @fish.save
        format.html { redirect_to @fish, notice: 'Fish was successfully created.' }
        format.json { render json: @fish, status: :created, location: @fish }
      else
        format.html { render action: "new" }
        format.json { render json: @fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fish/1
  # PUT /fish/1.json
  def update
    @fish = Fish.find(params[:id])

    respond_to do |format|
      if @fish.update_attributes(params[:fish])
        format.html { redirect_to @fish, notice: 'Fish was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fish/1
  # DELETE /fish/1.json
  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy

    respond_to do |format|
      format.html { redirect_to fish_index_url }
      format.json { head :ok }
    end
  end
end
