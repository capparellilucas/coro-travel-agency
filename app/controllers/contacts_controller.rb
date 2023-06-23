class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    # No need for app/views/contacts/create.html.erb
    redirect_to contact_path(@contact)
  end

  private

  def contact_params
    params.require(:contact).permit(
      :contact_name,
      :contact_phone,
      :contact_mail,
      :contact_school,
      :contact_grade,
      :contact_division,
      :contact_shift,
      :contact_school_location
    )
  end
end
