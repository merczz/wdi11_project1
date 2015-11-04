class ImagesController < ApplicationController
  def show
    @album = Album.find(params[:album_id])
    @images = Image.where(album_id: @album.id)
  end
  def edit
  end
  
end
