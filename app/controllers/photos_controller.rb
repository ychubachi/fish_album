class PhotosController < ApplicationController

  # GET /photos
  # GET /photos.json
  def index
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photos = Photo.where(fish_id: params[:fish_id])

    respond_to do |format|
      format.html do
        if admin?
          render
        else
          render layout: 'mobile'
        end
      end
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html do
        if admin?
          render # show.html.erb
        else
          render layout: 'mobile' # show.html.erb
        end
      end
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.new(params[:photo])
    @photo.fish = @fish

    respond_to do |format|
      if @photo.save
        format.html { redirect_to family_fish_photos_path(@family, @fish), notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to family_fish_photos_path(@family, @fish), notice: 'Photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @family = Family.find(params[:family_id])
    @fish = Fish.find(params[:fish_id])
    @photo = Photo.find(params[:id])

    @photo.remove_file!
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to family_fish_photos_path(@family,@fish) }
      format.json { head :ok }
    end
  end
end
