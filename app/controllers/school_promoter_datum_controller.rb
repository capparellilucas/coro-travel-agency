class SchoolPromoterDatumController < ApplicationController
  def index
    @school_promoter_datum = SchoolPromoterDatum.all
  end

  def new
    @school_promoter_data = SchoolPromoterDatum.new
  end

  def create
    @school_promoter_data = SchoolPromoterDatum.new(school_promoter_data_params)
    @school_promoter_data.save # Will raise ActiveModel::ForbiddenAttributesError

    # redirect_to restaurant_path(@restaurant)
  end

  private

  def school_promoter_data_params
    params.require(:school_promoter_data).permit(
      :user_id,
      :promoter_name,
      :promotion_date,
      :phone,
      :school,
      :location,
  # "address"
  # latitude"
  # longitude"
      :name,
      :grade,
      :division,
      :shift,
      :relationship
    )
  end

end
