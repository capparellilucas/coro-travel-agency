class CreateGraduates < ActiveRecord::Migration[7.0]
  def change
    create_table :graduates do |t|
      t.string :name
      t.string :phone
      t.string :mail
      t.string :school
      t.string :grade
      t.string :division
      t.string :shift
      t.string :school_location
      t.string :level
      t.timestamps
    end
  end
end
