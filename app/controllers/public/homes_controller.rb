class Public::HomesController < ApplicationController
  def top
    @pictures=Picture.limit(5)
  end
end
