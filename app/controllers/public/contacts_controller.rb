class Public::ContactsController < ApplicationController
  def new
    @contact=Contact.new
  end

  def create
    contact=Contact.new
    if contact.save
      redirect_to contacts_complete_path
    else
      render new
    end
  end

  def confirm
    @contact=Contact.new
  end

  def complete
  end
end
