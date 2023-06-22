class Public::HomesController < ApplicationController
  def top
    @pictures=Picture.limit(4)
  end
end
