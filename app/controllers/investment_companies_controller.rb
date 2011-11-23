class InvestmentCompaniesController < ApplicationController
  respond_to :json
  around_filter :rescue_error
  
  def index
    render json: InvestmentCompany.all
  end
  
  def show
    render json: InvestmentCompany.find(params[:id])
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
