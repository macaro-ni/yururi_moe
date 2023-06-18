class Admin::PicturesController < ApplicationController
  def index
    @pictures=Picture.all
  end

  def show
  end

  def new
    @picture=Picture.new
  end

  def create
    @picture=Picture.new
    @picture.save
  end

  def edit
  end

  def update
  end
end
