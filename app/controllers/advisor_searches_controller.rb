class AdvisorSearchesController < ApplicationController
  
  def new
    @advisor_search = AdvisorSearch.new
    render :show
  end
  

  def show
    @advisor_search = AdvisorSearch.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @advisor_search = AdvisorSearch.new(params[:advisor_search])
    if @advisor_search.save
      # render json: @advisor_search
    else
      # render json: @advisor_search.errors, status: :unprocessable_entity
    end
    render :show
  end

  def update
    @advisor_search = AdvisorSearch.find params[:id]
    if @advisor_search.update_attributes params[:advisor_search]
      # render json: advisor_search
    else
      # render json: advisor_search.errors, status: :unprocessable_entity
    end
    
    respond_to do |format|
      format.html { render :show }
      format.js   { render :show }
    end
  end

end
