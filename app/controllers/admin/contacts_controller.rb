class Admin::ContactsController < ApplicationController
  def index
    @contacts=Contact.order("id DESC")
  end

  def show
    @contact=Contact.find(params[:id])
  end
end
