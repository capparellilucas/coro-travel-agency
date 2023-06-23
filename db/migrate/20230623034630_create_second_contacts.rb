class CreateSecondContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :second_contacts do |t|
      t.string :second_contact_name
      t.string :second_contact_phone
      t.string :second_contact_mail
      t.string :second_contact_school
      t.string :second_contact_grade
      t.string :second_contact_division
      t.string :second_contact_shift
      t.string :second_contact_school_location
      t.timestamps
    end
  end
end
