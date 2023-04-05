class AddObservationsToSchoolPromoter < ActiveRecord::Migration[7.0]
  def change
    add_column :school_promoters, :observations, :string
    add_column :school_promoters, :name2, :string
    add_column :school_promoters, :name3, :string
    add_column :school_promoters, :name4, :string
    add_column :school_promoters, :name5, :string
    add_column :school_promoters, :phone2, :string
    add_column :school_promoters, :phone3, :string
    add_column :school_promoters, :phone4, :string
    add_column :school_promoters, :phone5, :string
    add_column :school_promoters, :relationship2, :string
    add_column :school_promoters, :relationship3, :string
    add_column :school_promoters, :relationship4, :string
    add_column :school_promoters, :relationship5, :string
  end
end
