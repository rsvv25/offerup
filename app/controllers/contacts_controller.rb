class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show edit update destroy]

  def index
    @q = Contact.ransack(params[:q])
    @contacts = @q.result(distinct: true).includes(:items).page(params[:page]).per(10)
  end

  def show
    @listing = Listing.new
  end

  def new
    @contact = Contact.new
  end

  def edit; end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact, notice: "Contact was successfully created."
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: "Contact was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: "Contact was successfully destroyed."
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:bought_id, :selling_id)
  end
end
