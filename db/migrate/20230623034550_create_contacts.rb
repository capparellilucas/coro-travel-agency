class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_mail
      t.string :contact_school
      t.string :contact_grade
      t.string :contact_division
      t.string :contact_shift
      t.string :contact_school_location
      t.timestamps
    end
  end
end
