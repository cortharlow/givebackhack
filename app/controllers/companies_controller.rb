class CompaniesController < ApplicationController


  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
    end
  end

end
