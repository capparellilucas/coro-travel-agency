class SecondContactsController < ApplicationController
  def index
    @second_contacts = SecondContact.all
  end

  def new
    @second_contact = SecondContact.new
  end

  def create
    @second_contact = SecondContact.new(second_contact_params)
    @second_contact.save
    # No need for app/views/second_contacts/create.html.erb
    redirect_to second_contact_path(@second_contact)
  end

  private

  def second_contact_params
    params.require(:second_contact).permit(
      :second_contact_name,
      :second_contact_phone,
      :second_contact_mail,
      :second_contact_school,
      :second_contact_grade,
      :second_contact_division,
      :second_contact_shift,
      :second_contact_school_location
    )
  end
end
