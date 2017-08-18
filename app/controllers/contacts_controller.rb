class ContactsController < ApplicationController
  def index
    end

    def new
      @contact = Contact.new
    end

    def create
       Contact.create(contacts_params)
       redirect_to root_path
    end

    private
   def contacts_params
     params.require(:contact).permit(:title, :content)
   end
  end
