class Public::HomesController < ApplicationController
  def top
    # @pictures=Picture.limit(4)
    @pictures=Picture.all
  end
end
