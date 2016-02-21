class InterestsController < ApplicationController

  def new
    @interest = Interest.new
  end

  def edit
    @interest = Interest.find(params[:id])
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.user_id = current_user.id

    if @interest.save
      redirect_to company_openings_path
    else
      render "new"
    end
  end

  def update
    @interest = Interest.find(params[:id])

    if @interest.update(interest_params)
      redirect_to @interest.user
    else
      render "edit"
    end
  end

  def destroy
    @interest = Interest.find(params[:id])
    redirect_to @interest.user
    @itinerary.destroy
  end

  private

  def interest_params
    params.require(:interest).permit(
      :user_id,
      :technology,
      :medical,
      :construction,
      :create,
      :culinary,
      :industrial,
      :mechanical
    )
  end
end
