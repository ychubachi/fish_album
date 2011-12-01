class PhotosController < ApplicationController

  # GET /photos
  # GET /photos.json
  def index
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
      @photos = Photo.where(fish_id: params[:fish_id])
    else
      @fish = nil
      @photos = Photo.all
    end

    respond_to do |format|
      if admin?
        format.html
      else
        format.html {render layout: 'mobile', template: 'photos/index.mobile' }
      end
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
    else
      @fish = nil
    end
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if admin?
        format.html
      else
        format.html {render layout: 'mobile', template: 'photos/show.mobile' }
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
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
    else
      @fish = nil
    end
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
    else
      @fish = nil
    end
    @photo = Photo.new(params[:photo])
    @photo.fish = @fish

    respond_to do |format|
      if @photo.save
        format.html { redirect_to fish_photos_path(@fish), notice: 'Photo was successfully created.' }
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
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
    else
      @fish = nil
    end
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        @photo.file.recreate_versions!
        if @fish
          format.html { redirect_to fish_photos_path(@fish), notice: 'Photo was successfully updated.' }
        else
          format.html { redirect_to photos_path, notice: 'Photo was successfully updated.' }
        end
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
    if params[:fish_id]
      @fish = Fish.find(params[:fish_id])
    else
      @fish = nil
    end
    @photo = Photo.find(params[:id])

    @photo.remove_file!
    @photo.destroy

    respond_to do |format|
      if @fish
        format.html { redirect_to fish_photos_path(@fish) }
      else
        format.html { redirect_to photos_path }
      end
      format.json { head :ok }
    end
  end
end
