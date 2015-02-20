class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  def new
    @photo =Photo.new
    if current_user == nil
      redirect_to new_sessions_path
    end
  end
  def create
    #Find our user that we should attach to. 
    if current_user != nil
      #this only works if a user is logged in. If no one is logged in it barfs.
      @photo = current_user.photos.new(photo_params)
      #or the standard create:
      #@photo = Photo.create(photo_params)
      if @photo.save
      redirect_to current_user
      else
      render 'new'
      end
    else
      redirect_to new_sessions_path
    end 
  end

  def show

  end

  def photo_params
    params.require(:photo).permit(:image, :photo_date)
  end
end