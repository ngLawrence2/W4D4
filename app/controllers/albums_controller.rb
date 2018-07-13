class AlbumsController < ApplicationController
  def new
    @bands = Band.all
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save!
      redirect_to band_url(album_params['band_id'])
    else
      flash[:error] = ['incorrect fields']
    end
  end

  def edit
    @album = Album.find(params[:id])
    @bands=Band.all
    render :edit
  end

  def update

  end

  def show

  end

  def destroy

  end

  private
  def album_params
    params.require(:album).permit(:year,:title,:livestudio,:band_id)
  end
end
