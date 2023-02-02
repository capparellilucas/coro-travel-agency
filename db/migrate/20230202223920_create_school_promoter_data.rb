class CreateSchoolPromoterData < ActiveRecord::Migration[7.0]
  def change
    create_table :school_promoter_data do |t|
      t.bigint :user_id, null: false
      t.string :promoter_name
      t.datetime :promotion_date, precision: nil
      t.string :phone
      t.string :school
      t.string :location
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :grade
      t.string :division
      t.string :shift
      t.string :relationship
      t.timestamps
    end
  end
end
