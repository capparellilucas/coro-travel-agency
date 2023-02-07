class RenameSchoolsPromoterDatumToSchoolPromoter < ActiveRecord::Migration[7.0]
  def change
    rename_table :school_promoter_data, :school_promoters
  end
end
