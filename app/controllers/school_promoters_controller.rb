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

    redirect_to school_promoter_path(@school_promoter)
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
      :school,
      :location,
      # "address"
      # latitude"
      # longitude"
      :name,
      :name2,
      :name3,
      :name4,
      :name5,
      :phone,
      :phone2,
      :phone3,
      :phone4,
      :phone5,
      :relationship,
      :relationship2,
      :relationship3,
      :relationship4,
      :relationship5,
      :grade,
      :division,
      :shift,
      :observations
    )
  end

end
