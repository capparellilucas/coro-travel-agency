class GraduatesController < ApplicationController

  def index
    @graduates = Graduate.all
  end

  def new
    @graduate = Graduate.new
  end

  def create
    @graduate = Graduate.new(graduate_params)
    @graduate.save
    # No need for app/views/graduates/create.html.erb
    redirect_to graduate_path(@graduate)
  end

  private

  def graduate_params
    params.require(:graduate).permit(
      :name,
      :phone,
      :mail,
      :school,
      :grade,
      :division,
      :shift,
      :school_location,
      :level
    )
  end
end
