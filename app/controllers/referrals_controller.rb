class ReferralsController < ApplicationController
  def index
    @referrals = Referral.all
  end

  def new
    @referral = Referral.new
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.save
    # No need for app/views/referrals/create.html.erb
    redirect_to referral_path(@referral)
  end

  private

  def referral_params
    params.require(:referral).permit(
      :referral_name,
      :referral_phone,
      :referral_school,
      :referral_grade,
      :referral_division,
      :referral_shift,
      :referral_school_location,
      :referrer_name,
      :referrer_name,
      :referrer_phone,
      :referrer_location,
      :referrer_school
    )
  end
end
