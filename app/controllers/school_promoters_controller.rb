class SchoolPromotersController < ApplicationController
  # before_action :set_user, only: %i[new create]

  def index
    @school_promoters = SchoolPromoter.all
  end

  def new
    @school_promoter = SchoolPromoter.new
  end

  def create
    @school_promoter = SchoolPromoter.new(school_promoter_params)
    @school_promoter.user_id = current_user.id
    @school_promoter.save # Will raise ActiveModel::ForbiddenAttributesError

    # redirect_to restaurant_path(@restaurant)
  end

  private

  # def set_user
  #   @user = User.find(current_user)
  # end

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
