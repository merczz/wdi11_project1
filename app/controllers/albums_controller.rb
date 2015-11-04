class AlbumsController < ApplicationController
  before_action :require_user, only: [:new, :index, :edit, :update, :destroy]

  def index
    @albums = Album.all
    @images = Image.all
    @album = Album.new
  end
  def new
  end
  def edit
  end

  def create
    # if @album
    @album = Album.new(album_params)
    @album.user_id = current_user.id
    @album.save
    if @album.save
      redirect_to '/'
    else
      render 'new'
    end
    # end
    
  end

    def destroy
    @album = Album.find(params[:id])
    while Image.where(:album_id => @album.id).present?
      Image.find_by(album_id: @album.id).destroy 
    end
    @album.destroy  
    redirect_to '/'
  end


  private
  def album_params
    params.require(:album).permit(:name)
  end




end
