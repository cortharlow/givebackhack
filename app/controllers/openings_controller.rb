class OpeningsController < ApplicationController


  def new
    @opening = Opening.new
  end

  def create
    @opening = Opening.new(opening_params)
    @opening.company_id = current_company.id

    if @opening.save
    end
  end

end
