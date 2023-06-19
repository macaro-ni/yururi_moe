class Admin::PicturesController < ApplicationController
  def index
    @pictures=Picture.all
  end

  def show
    @picture=Picture.find(params[:id])
  end

  def new
    @picture=Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "投稿に成功しました"
      redirect_to admin_pictures_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  private
  def picture_params
   params.require(:picture).permit(:name,:genre_id,:introduction,:image)
  end

end
