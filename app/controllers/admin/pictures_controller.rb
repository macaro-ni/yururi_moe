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
    @picture=Picture.find(params[:id])

  end

  def update
    picture=Picture.find(params[:id])
    if picture.update(picture_params)
      flash[:notice] = "編集内容の保存に成功しました"
      redirect_to admin_picture_path(picture.id)
    else
      render "edit"
    end
  end

  private
  def picture_params
   params.require(:picture).permit(:name,:genre_id,:introduction,:image)
  end

end
