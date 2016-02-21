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
      redirect_to new_user_interest_path
