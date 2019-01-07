class ContactController < ApplicationController
  before_action set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contact = Contact.all
  end

  def show
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new, notice: "Não foi possivel criar um novo contato."
    end
  end

  def new
    @contact = Contact.new
    @contact.build_address
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render :new, notice: "Não foi possivel criar um novo contato."
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  private
  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name,
      address_attributes: [:street, :number, :neighborhood],
      phones_attributes: [:number]
    )
  end
end