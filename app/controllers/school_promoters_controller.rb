class SchoolPromotersController < ApplicationController
  def index
    @school_promoters = SchoolPromoter.all
  end

  def new
    @school_promoter = SchoolPromoter.new
  end

  def create
    @school_promoter = SchoolPromoter.new(school_promoter_params)
    @school_promoter.save # Will raise ActiveModel::ForbiddenAttributesError

    # redirect_to restaurant_path(@restaurant)
  end

  private

  def school_promoter_params
    params.require(:school_promoter).permit(
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
