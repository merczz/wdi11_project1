class ImagesController < ApplicationController
  def index
  end

  def edit
  end
    def new
    @album = Album.find(params[:album_id])
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to album_path(@image.album_id)
    else
      render 'new'
    end

  end
  def show
    @images = Image.all
  end

    def destroy
    if Image.where(:id => params[:id]).present?
      album_id = Image.find(params[:id]).album_id
      Image.find(params[:id]).destroy  
    end
    redirect_to album_path(album_id)
    end

    private
  def image_params
    params.require(:image).permit(:name, :url, :album_id)
  end
end
