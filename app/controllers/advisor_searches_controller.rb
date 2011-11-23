class AdvisorSearchesController < ApplicationController
  respond_to :json
  around_filter :rescue_error
  
  def new
    @advisor_search = AdvisorSearch.new
  end
  

  def show
    @advisor_search = AdvisorSearch.find(params[:id])
    render json: @search
  end

  def create
    @advisor_search = AdvisorSearch.new(params[:advisor_search])
    if @advisor_search.save
      render json: @advisor_search
    else
      render json: @advisor_search.errors, status: :unprocessable_entity
    end
  end

  def update
    todo = AdvisorSearch.find params[:id]
    if advisor_search.update_attributes params[:advisor_search]
      render json: advisor_search
    else
      render json: advisor_search.errors, status: :unprocessable_entity
    end
  end

  private
  
    def rescue_error
      begin
        yield
      rescue => exception
        return render json: { error: exception.message }, status: :unprocessable_entity
      end
    end
  
end
