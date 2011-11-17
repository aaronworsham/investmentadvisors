class SearchesController < ActionController::Base
  layout 'application'
  
  def new
  end
  
  def create
    @search = Search.new(params[:search])
    render 'show'
  end
end
