class CreateRefferals < ActiveRecord::Migration[7.0]
  def change
    create_table :refferals do |t|
      t.string :referral_name
      t.string :referral_phone
      t.string :referral_school
      t.string :referral_grade
      t.string :referral_division
      t.string :referral_shift
      t.string :referral_school_location
      t.string :referrer_name
      t.string :referrer_phone
      t.string :referrer_location
      t.string :referrer_school
      t.timestamps
    end
  end
end
